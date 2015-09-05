//
//  weatherObj.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "weatherObj.h"

@implementation weatherObj
@synthesize desc, icon, id, main;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

+ (JSONKeyMapper *)keyMapper
{
  // Indicating desc as property to store description
  return [[JSONKeyMapper alloc] initWithDictionary:@{@"description" : @"desc"}];
}

@end
