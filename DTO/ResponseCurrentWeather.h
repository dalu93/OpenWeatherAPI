//
//  ResponseCurrentWeather.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "AbstractResponse.h"
#import "coord.h"
#import "weatherObj.h"
#import "main.h"
#import "wind.h"
#import "clouds.h"
#import "sys.h"
#import "rain.h"

@interface ResponseCurrentWeather : AbstractResponse

@property (nonatomic, strong) coord *coord;
@property (nonatomic, strong) NSArray<weatherObj> *weather;
@property (nonatomic, strong) NSString *base;
@property (nonatomic, strong) main *main;
@property (nonatomic, strong) NSNumber *visibility;
@property (nonatomic, strong) wind *wind;
@property (nonatomic, strong) clouds *clouds;
@property (nonatomic, strong) NSNumber *dt;
@property (nonatomic, strong) sys *sys;
@property (nonatomic, strong) rain *rain;
@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSString *name;

@end
