//
//  wind.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"

@interface wind : JSONModel

@property (nonatomic, strong) NSNumber *speed;
@property (nonatomic, strong) NSNumber *deg;

@end
