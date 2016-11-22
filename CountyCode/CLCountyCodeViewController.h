//
//  CLCountyCodeViewController.h
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^CountryCodeBlock)(NSString *code);
@interface CLCountyCodeViewController : UITableViewController

@property (nonatomic, copy)CountryCodeBlock countryCodeBlock;
@end
