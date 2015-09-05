//
//  OpenWeatherConnect.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "OpenWeatherConnect.h"
#import <AFNetworking/AFNetworking.h>

static NSString * const kOpenWeatherBaseUrl = @"http://http://api.openweathermap.org/data/";
static NSString * const kOpenWeatherAPIVersion = @"2.5";
static NSString * const kOpenWeatherCurrentWeatherCommand = @"weather";
static NSString * const kOpenWeatherForecastWeatherCommand = @"forecast/daily";


// Dictionary constants
static NSString * const kRequestDictionaryUnitsKey = @"units";
static NSString * const kRequestDictionaryUnitsValue = @"metric";
static NSString * const kRequestDictionaryCountKey = @"cnt";
static NSString * const kRequestDictionaryLocationKey = @"q";

typedef NS_ENUM(NSUInteger, OpenWeatherRequest) {
  OpenWeatherRequestCurrentWeather = 0,
  OpenWeatherRequestForecastWeather
};

@interface OpenWeatherConnect ()
{
  AFHTTPRequestOperationManager *manager;
}

@end

@implementation OpenWeatherConnect

+ (instancetype)sharedConnect
{
  static dispatch_once_t p = 0;
  __strong static id _sharedConnect = nil;
  
  dispatch_once(&p, ^{
    _sharedConnect = [[self alloc] init];
  });
  
  return _sharedConnect;
}

- (instancetype)init
{
  self = [super init];
  if (self)
  {
    manager = [AFHTTPRequestOperationManager manager];
  }
  return self;
}

#pragma mark - Public stuffs
- (void)getCurrentWeatherForCityName:(NSString *)cityName successBlock:(OpenWeatherSuccessBlock)successBlock;
{
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    [self __getWeatherInfosForCityName:cityName
                          numberOfDays:0
                          successBlock:^(NSError *error, AbstractResponse *response) {
                            dispatch_async(dispatch_get_main_queue(), ^{
                              if (successBlock)
                                successBlock(error,response);
                            });
                          }];
  });
}

- (void)getForecastForCityName:(NSString *)cityName numberOfDays:(NSUInteger)count successBlock:(OpenWeatherSuccessBlock)successBlock;
{
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    [self __getWeatherInfosForCityName:cityName
                          numberOfDays:count
                          successBlock:^(NSError *error, AbstractResponse *response) {
                            dispatch_async(dispatch_get_main_queue(), ^{
                              if (successBlock)
                                successBlock(error,response);
                            });
                          }];
  });
}
   
#pragma mark - Private stuffs

- (void)__getWeatherInfosForCityName:(NSString *)cityName numberOfDays:(NSUInteger)days successBlock:(void(^)(NSError *error, AbstractResponse *response))successBlock;
{
  // Reference to an AbstractResponse
  __block AbstractResponse *abstract = nil;
  Class responseClass = nil;
  NSString *command = nil;
  
  // retrieving class and command
  if (days > 0)
  {
    responseClass = [ResponseForecastWeather class];
    command = kOpenWeatherForecastWeatherCommand;
  }
  else
  {
    responseClass = [ResponseCurrentWeather class];
    command = kOpenWeatherCurrentWeatherCommand;
  }
  
  // Preparing network params
  NSString *urlStr = [NSString stringWithFormat:@"%@/%@/%@", kOpenWeatherBaseUrl,kOpenWeatherAPIVersion, command];
  NSDictionary *parameters = [self dictionaryForCity:cityName
                                                days:days];
  if (! parameters)
  {
    NSError *error = [NSError errorWithDomain:kOpenWeatherConnectErroDomain
                                         code:kOpenWeatherConnectMissingCityNameErrorCode
                                     userInfo:@{NSLocalizedDescriptionKey : kOpenWeatherConnectMissingCityName}];
    if (successBlock)
      successBlock(error,nil);
  }
  else
  {
    // Call OpenWeather
    [manager GET:urlStr
      parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObj) {
        // responseObj will be a NSDictionary
        NSError *parseError = nil;
        // Using abstract and class to alloc dynamic response
        abstract = [[responseClass alloc] initWithDictionary:(NSDictionary *)responseObj
                                                       error:&parseError];
        if (successBlock)
          successBlock(parseError,abstract);
        
      } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (successBlock)
          successBlock(error,nil);
      }];
  }
}

- (NSDictionary *)dictionaryForCity:(NSString *)cityName days:(NSUInteger)days;
{
  if (! cityName || [cityName isEqualToString:@""])
    return nil;
  
  NSMutableDictionary *parametersDict = [NSMutableDictionary new];
  [parametersDict addEntriesFromDictionary:@{ kRequestDictionaryLocationKey : cityName,
                                              kRequestDictionaryUnitsKey : kRequestDictionaryUnitsValue}];
  if (days > 0)
  {
    [parametersDict setValue:@(days) forKey:kRequestDictionaryCountKey];
  }
  
  return [NSDictionary dictionaryWithDictionary:parametersDict];
}

@end
