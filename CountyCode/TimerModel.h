//
//  TimerModel.h
//  CountyCode
//
//  Created by chenlu on 2016/12/27.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimerModel : NSObject

@property (nonatomic, assign) NSInteger  countdownTime;
//@property (nonatomic, assign) NSInteger currentTimeString;

/**
 *  计数减1(countdownTime - 1)
 */
- (void)countDown;

/**
 *  将当前的countdownTime信息转换成字符串
 */
//- (NSInteger)countdownTime;

@end
