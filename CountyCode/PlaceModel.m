//
//  PlaceModel.m
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "PlaceModel.h"

@implementation PlaceModel


- (instancetype)initWithName:(NSString *)name andCode:(id)code
{
    if (self = [super init]) {
        self.name =  name;
        self.code =  code;
    }
    
    return self;
}
@end
