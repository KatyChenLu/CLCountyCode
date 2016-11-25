//
//  CLCountryCodeTableViewCellTableViewCell.m
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "CLCountryCodeTableViewCellTableViewCell.h"

@implementation CLCountryCodeTableViewCellTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.separatorInset = UIEdgeInsetsMake(0, 10, 0, 0);
        self.layoutMargins = UIEdgeInsetsZero;
        self.preservesSuperviewLayoutMargins = false;
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
