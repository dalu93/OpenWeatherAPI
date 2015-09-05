//
//  ResponseCurrentWeather.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "ResponseCurrentWeather.h"

@implementation ResponseCurrentWeather
@synthesize name,cod,coord,clouds,sys,rain,main,base,wind,visibility,dt,id,weather;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
