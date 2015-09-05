//
//  ResponseForecastWeather.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "AbstractResponse.h"
#import "city.h"
#import "listObj.h"

@interface ResponseForecastWeather : AbstractResponse

@property (nonatomic, strong) city *city;
@property (nonatomic, strong) NSNumber *message;
@property (nonatomic, strong) NSArray<listObj> *list;

@end
