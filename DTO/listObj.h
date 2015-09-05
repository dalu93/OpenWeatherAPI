//
//  listObj.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"
#import "weatherObj.h"
#import "temp.h"

@protocol listObj

@end

@interface listObj : JSONModel

@property (nonatomic, strong) NSNumber *dt;
@property (nonatomic, strong) NSNumber *pressure;
@property (nonatomic, strong) NSNumber *humidity;
@property (nonatomic, strong) NSArray<weatherObj> *weather;
@property (nonatomic, strong) NSNumber *speed;
@property (nonatomic, strong) NSNumber *deg;
@property (nonatomic, strong) NSNumber *clouds;
@property (nonatomic, strong) NSNumber *rain;
@property (nonatomic, strong) temp *temp;


@end
