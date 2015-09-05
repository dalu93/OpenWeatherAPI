//
//  City.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "city.h"

@implementation city
@synthesize id,name,coord,country,population;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
