//
//  sys.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "sys.h"

@implementation sys
@synthesize sunrise, sunset, message, id, type, country;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
