//
//  ViewController.m
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "ViewController.h"
#import "CLCountyCodeViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIButton * btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btn = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame = CGRectMake(0, 0, 100, 50);
    _btn.center = self.view.center;
    _btn.backgroundColor = [UIColor redColor];
    _btn.tintColor =[UIColor whiteColor];
    [_btn setTitle:@"btn" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
    //
}
- (void)btnAction {
    CLCountyCodeViewController *VC = [[CLCountyCodeViewController alloc] initWithStoryBoard];
    VC.countryCodeBlock = ^(NSString *code){
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
        [_btn setTitle:code forState:UIControlStateNormal];
    };
    [self presentViewController:VC animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    //11.30 今天开始深入学习nsoperation，加油。
    //12.1 昨天没学成，今天开始吧。。
    //12.2昨天上线了版本，今天又该有新的任务了。，期待团建时溜冰啊哈哈
    //....。。。。。
    //12.5虎宝宝第一天去上班。
}


@end
