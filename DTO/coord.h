//
//  coord.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"

@interface coord : JSONModel

@property (nonatomic, strong) NSNumber *lon;
@property (nonatomic, strong) NSNumber *lat;

@end
