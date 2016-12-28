//
//  CLCountDownTableViewCell.m
//  CountyCode
//
//  Created by chenlu on 2016/12/27.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "CLCountDownTableViewCell.h"

@implementation CLCountDownTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code

}

-(void)createCellwithTimer:(TimerModel *)timeModle {
    self.timerModel = timeModle;
//    NSTimer *time = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(loadContent) userInfo:nil repeats:YES];
//    [[NSRunLoop currentRunLoop] addTimer:time forMode:NSRunLoopCommonModes];
}

-(void)loadContent{
    
    NSInteger seconds = self.timerModel.countdownTime;
    self.timeLabel.text = [NSString stringWithFormat:@"%02ld:%02ld:%02ld",seconds%3600,seconds%3600/60,seconds%60];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
#pragma mark - 通知中心
- (void)registerNSNotificationCenter {
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationCenterEvent:)
                                                 name:@"NSNotificationCountDownTimeCell"
                                               object:nil];
}

- (void)removeNSNotificationCenter {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"NSNotificationCountDownTimeCell" object:nil];
}

- (void)notificationCenterEvent:(id)sender {
    
        [self loadContent];
    
}

@end
