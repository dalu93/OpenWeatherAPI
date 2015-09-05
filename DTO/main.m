//
//  main.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "main.h"

@implementation main
@synthesize pressure, temp, temp_max, temp_min, humidity;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
