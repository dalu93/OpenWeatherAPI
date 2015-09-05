//
//  temp.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"

@interface temp : JSONModel

@property (nonatomic, strong) NSNumber *day;
@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;
@property (nonatomic, strong) NSNumber *night;
@property (nonatomic, strong) NSNumber *eve;
@property (nonatomic, strong) NSNumber *morn;

@end
