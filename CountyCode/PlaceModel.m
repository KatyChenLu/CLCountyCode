//
//  PlaceModel.m
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "PlaceModel.h"

@implementation PlaceModel

-(instancetype)initWithNameStr:(NSString *)nameStr andCode:(NSString *)codeStr
{
    if(self =[super init]){
        self.name = nameStr;
        self.code = codeStr;
    }
    return self;
}
@end
