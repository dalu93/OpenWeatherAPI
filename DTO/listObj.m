//
//  listObj.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "listObj.h"

@implementation listObj
@synthesize weather,clouds,deg,dt,pressure,humidity,speed;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
