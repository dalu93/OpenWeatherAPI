//
//  weatherObj.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"

@protocol weatherObj

@end

@interface weatherObj : JSONModel

@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSString *main;
@property (nonatomic, strong) NSString *desc;
@property (nonatomic, strong) NSString *icon;

@end
