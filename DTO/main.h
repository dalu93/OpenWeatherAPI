//
//  main.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"

@interface main : JSONModel

@property (nonatomic, strong) NSNumber *temp;
@property (nonatomic, strong) NSNumber *pressure;
@property (nonatomic, strong) NSNumber *humidity;
@property (nonatomic, strong) NSNumber *temp_min;
@property (nonatomic, strong) NSNumber *temp_max;

@end
