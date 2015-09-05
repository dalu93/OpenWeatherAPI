//
//  rain.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "rain.h"

@implementation rain
@synthesize hour;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

+ (JSONKeyMapper *)keyMapper
{
  // property name cannot contain numbers 
  return [[JSONKeyMapper alloc] initWithDictionary:@{@"1h" : @"hour"}];
}

@end
