//
//  CLArrayViewController.m
//  CountyCode
//
//  Created by chenlu on 2016/12/28.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "CLArrayViewController.h"

@interface CLArrayViewController ()

@end

@implementation CLArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
//    NSArray *reversedArray = [[array objectEnumerator] allObjects];
//    NSLog(@"%@",reversedArray);
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isEqualToString:@"4"]) {
            *stop = YES;
        }
        NSLog(@"langArray[%ld]= %@",idx, obj);

    }];
//    for (int i = 0; i < array.count; i++) {
//        NSLog(@"langArray[%d]= %@",i, langArray[i]);
//    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
