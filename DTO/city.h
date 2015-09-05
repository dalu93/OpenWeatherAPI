//
//  City.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"
#import "coord.h"

@interface city : JSONModel

@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSNumber *population;
@property (nonatomic, strong) coord *coord;

@end
