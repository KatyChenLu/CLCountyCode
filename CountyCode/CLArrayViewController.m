//
//  CLArrayViewController.m
//  CountyCode
//
//  Created by chenlu on 2016/12/28.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "CLArrayViewController.h"

@interface CLArrayViewController ()
@property (nonatomic, strong) NSMutableArray *array;
@end

@implementation CLArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _array = [NSMutableArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
//    NSArray *reversedArray = [[array objectEnumerator] allObjects];
//    NSLog(@"%@",reversedArray);
    
    [_array makeObjectsPerformSelector:@selector(abc)];
    
   BOOL isShow = [self acd];
    
//    for (int i = 0; i < array.count; i++) {
//        NSLog(@"langArray[%d]= %@",i, langArray[i]);
//    }
    [_array enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
         NSLog(@"langArray[%ld]= %@",idx, obj);
    }];

}
- (void)abc {
    NSLog(@"1");
}
-(BOOL )acd{
   __block BOOL isis = NO;
    [_array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isEqualToString:@"19"]) {
            *stop = YES;
           isis = YES;
        }else{
            isis = NO;
        }
        NSLog(@"langArray[%ld]= %@",idx, obj);
        
    }];
    return isis;
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
