//
//  coord.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "coord.h"

@implementation coord
@synthesize lat, lon;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
