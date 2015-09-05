//
//  sys.h
//  Pods
//
//  Created by Luca D'Alberti on 05/09/15.
//
//

#import "JSONModel.h"

@interface sys : JSONModel

@property (nonatomic, strong) NSNumber *type;
@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSNumber *message;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSNumber *sunrise;
@property (nonatomic, strong) NSNumber *sunset;

@end
