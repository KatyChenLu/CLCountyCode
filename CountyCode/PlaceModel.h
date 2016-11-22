//
//  PlaceModel.h
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaceModel : NSObject

-(instancetype)initWithNameStr:(NSString *)nameStr andCode:(NSString *)codeStr;

@property (assign, readwrite, nonatomic) NSString *name;
@property (assign, readwrite, nonatomic) NSString *code;

@end
