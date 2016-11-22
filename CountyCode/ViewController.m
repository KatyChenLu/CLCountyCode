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
}
- (void)btnAction {
    CLCountyCodeViewController *VC = [[CLCountyCodeViewController alloc] init];
    VC.countryCodeBlock = ^(NSString *code){
        [self.navigationController popViewControllerAnimated:YES];
        [_btn setTitle:code forState:UIControlStateNormal];
    };
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
