//
//  CLCountDownTestViewController.m
//  CountyCode
//
//  Created by chenlu on 2016/12/27.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "CLCountDownTestViewController.h"
#import "CLCountDownTableViewCell.h"
#import "TimerModel.h"

@interface CLCountDownTestViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong)UITableView *myTableView;
@property (nonatomic, strong)NSArray  *timeModelArray;
@property (nonatomic, strong)NSTimer *timer;

@end

@implementation CLCountDownTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTableView];
    
    [self createTimer];
    [self createTimerModel];
}
- (void)createTimer {
    if (self.timer) {
        [self.timer invalidate];
        self.timer = nil;
    }
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerEvent) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
    
}
- (void)createTimerModel {
    if (!self.timeModelArray) {
        
        self.timeModelArray = [[NSArray alloc] init];
    }
//    [self.timeModelArray removeAllObjects];
//    for (int i = 0; i<30; i++) {
//        NSInteger time = i*10;
////        TimerModel *timerModel = [[TimerModel alloc] init];
////        timerModel.currentTimeString = time;
//        [self.timeModelArray addObject:@(time)];
//    }
    self.timeModelArray = @[@(80),@(10),@(20),@(30),@(40),@(50),@(60)];
}
- (void)timerEvent {
    for (int i = 0; i < self.timeModelArray.count; i ++) {
        TimerModel *timerModel = [self.timeModelArray objectAtIndex:i];
        [timerModel countDown];
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NSNotificationCountDownTimeCell" object:nil];
}
-(void)setTableView{
    self.myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.myTableView.separatorStyle = UITableViewCellSelectionStyleNone;
    self.myTableView.backgroundColor = [UIColor clearColor];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"myCell";
    CLCountDownTableViewCell *cell = (CLCountDownTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CLCountDownTableViewCell" owner:self options:nil] firstObject];
        cell.backgroundColor = [UIColor redColor];
    }
    [cell createCellwithTimer:[self.timeModelArray objectAtIndex:indexPath.row]];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.timeModelArray.count;
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
