//
//  AbstractResponse.m
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "AbstractResponse.h"

@implementation AbstractResponse
@synthesize cod;

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  return YES;
}

@end
