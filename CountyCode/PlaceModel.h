//
//  PlaceModel.h
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaceModel : NSObject

- (instancetype) initWithName:(NSString *)name andCode:code;

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *code;
@end
