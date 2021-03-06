//
//  OpenWeatherConnect.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import <Foundation/Foundation.h>

static NSString * const kOpenWeatherConnectErroDomain = @"Connect";

static NSString * const kOpenWeatherConnectMissingCityName = @"Missing city name";
static NSInteger const kOpenWeatherConnectMissingCityNameErrorCode = -1;

@class ResponseCurrentWeather;
@class ResponseForecastWeather;
@class AbstractResponse;

typedef void (^OpenWeatherSuccessBlock)(NSError *error, AbstractResponse *response);

@interface OpenWeatherConnect : NSObject

+ (instancetype)sharedConnect;

- (void)startWithAPIKey:(NSString *)key;

/**
 *  Retrieve the current weather infos
 *
 *  @param cityName     The city name
 *  @param successBlock It contains an AbstractResponse object or an NSError
 */
- (void)getCurrentWeatherForCityName:(NSString *)cityName successBlock:(OpenWeatherSuccessBlock)successBlock;

/**
 *  Retrieve the forecast for location
 *
 *  @param cityName     The city name
 *  @param count        Number of days
 *  @param successBlock It contains an AbstractResponse object or an NSError
 */
- (void)getForecastForCityName:(NSString *)cityName numberOfDays:(NSUInteger)count successBlock:(OpenWeatherSuccessBlock)successBlock;

@end
