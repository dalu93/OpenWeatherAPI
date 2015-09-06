//
//  rain.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "rain.h"

@implementation rain
@synthesize hour, threeHour;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{@"1h":@"hour",
                                                     @"3h":@"threeHour"}];
}

@end
