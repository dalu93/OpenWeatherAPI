//
//  ResponseCurrentWeather.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"
#import "coord.h"
#import "weatherObj.h"
#import "main.h"
#import "wind.h"
#import "rain.h"
#import "clouds.h"
#import "sys.h"

@interface ResponseCurrentWeather : JSONModel

@property (nonatomic, strong) coord *coord;
@property (nonatomic, strong) NSArray<weatherObj> *weather;
@property (nonatomic, strong) NSString *base;
@property (nonatomic, strong) main *main;
@property (nonatomic, strong) NSNumber *visibility;
@property (nonatomic, strong) wind *wind;
@property (nonatomic, strong) rain *rain;
@property (nonatomic, strong) clouds *clouds;
@property (nonatomic, strong) NSNumber *dt;
@property (nonatomic, strong) sys *sys;
@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *cod;

@end
