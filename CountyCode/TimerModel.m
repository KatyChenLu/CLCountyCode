//
//  TimerModel.m
//  CountyCode
//
//  Created by chenlu on 2016/12/27.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "TimerModel.h"

@implementation TimerModel

- (void)countDown{
    self.countdownTime = self.countdownTime-1;
}

//- (NSInteger)countdownTime{
//    
//    NSInteger seconds = self.countdownTime;
//    return seconds;
//}

@end
