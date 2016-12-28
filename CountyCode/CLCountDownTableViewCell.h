//
//  CLCountDownTableViewCell.h
//  CountyCode
//
//  Created by chenlu on 2016/12/27.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimerModel.h"

@interface CLCountDownTableViewCell : UITableViewCell
@property (strong, nonatomic) TimerModel *timerModel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

- (void)createCellwithTimer:(TimerModel *)timeModle;
@end
