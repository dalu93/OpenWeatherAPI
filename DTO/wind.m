//
//  wind.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "wind.h"

@implementation wind
@synthesize speed, deg;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
