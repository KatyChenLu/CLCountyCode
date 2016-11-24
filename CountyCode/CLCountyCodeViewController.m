//
//  CLCountyCodeViewController.m
//  CountyCode
//
//  Created by chenlu on 2016/11/22.
//  Copyright © 2016年 chenlu. All rights reserved.
//

#import "CLCountyCodeViewController.h"
#import "PlaceModel.h"
#import "CLCountryCodeTableViewCellTableViewCell.h"

@interface CLCountyCodeViewController ()

@property (nonatomic,strong) NSArray *countrys;
@property (nonatomic,strong) NSMutableDictionary *countrysDic;
@property (nonatomic,strong) NSMutableArray *indexArray;

//UITableView索引搜索工具
@property (nonatomic, strong) UILocalizedIndexedCollation *collation;
@end

@implementation CLCountyCodeViewController
- (instancetype)initWithStoryBoard
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self = [storyboard instantiateViewControllerWithIdentifier:@"CLCountyCodeViewController"];
    if (self) {
        
    }
    ///
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.sectionIndexColor = [UIColor colorWithRed:255/255.0 green:155/255.0 blue:0 alpha:1.0];
    self.tableView.sectionIndexBackgroundColor = [UIColor blackColor];
    self.tableView.tableFooterView = [[UIView alloc] init];
    NSString *countys = @"阿鲁巴,阿富汗,安哥拉,安圭拉,阿尔巴尼亚,安道尔,安提瓜和巴布达,澳大利亚,奥地利,阿塞拜疆,阿根廷,亚美尼亚,阿森松岛,美属萨摩亚,南极洲,阿尔及利亚,布基纳法索,孟加拉国,保加利亚,巴林,白俄罗斯,伯利兹,百慕大,玻利维亚,巴西,巴巴多斯,文莱,不丹,博茨瓦纳,布隆迪,比利时,贝宁,波斯尼亚和黑塞哥维那,英属维尔京群岛,乍得,留尼汪,克罗地亚,柬埔寨,中非共和国,加拿大,库克群岛,哥伦比亚,佛得角,哥斯达黎加,古巴,开曼群岛,塞浦路斯,捷克,智利,中国,科特迪瓦,喀麦隆,吉布提,多米尼克,丹麦,多米尼加,厄瓜多尔,埃及,厄立特里亚,爱沙尼亚,埃塞俄比亚,赤道几内亚,萨尔瓦多,东帝汶,法属波利尼西亚,法属圭亚那,芬兰,斐济,福克兰群岛,法国,法罗群岛,密克罗尼西亚联邦,法属南部领地,加蓬,格鲁吉亚,加纳,直布罗陀,几内亚,瓜德罗普,德国,关岛,圭亚那,希腊,格林纳达,格陵兰,危地马拉,几内亚比绍,香港,洪都拉斯,海地,匈牙利,印尼,印度,伊朗,伊拉克,冰岛,以色列,意大利,牙买加,约旦,日本,哈萨克斯坦,肯尼亚,吉尔吉斯斯坦,基里巴斯,科威特,科索沃共和国,老挝,黎巴嫩,利比里亚,利比亚,列支敦士登,莱索托,立陶宛,卢森堡,拉脱维亚,澳门,摩洛哥,摩纳哥,摩尔多瓦,马达加斯加,马尔代夫,墨西哥,马绍尔群岛,莫桑比克,毛里塔尼亚,蒙特塞拉特,马提尼克,毛里求斯,马拉维,马来西亚,马约特,马里,马耳他,缅甸,黑山,蒙古国,北马里亚纳群岛,朝鲜,纳米比亚,新喀里多尼亚,尼日尔,诺福克岛,尼日利亚,尼加拉瓜,纽埃,荷兰,挪威,尼泊尔,瑙鲁,新西兰,荷属安的列斯,阿曼,巴基斯坦,巴拿马,皮特凯恩群岛,秘鲁,菲律宾,帕劳,巴布亚新几内亚,波兰,波多黎各,葡萄牙,巴拉圭,卡塔尔,罗马尼亚,俄罗斯,卢旺达,马其顿,爱尔兰,刚果（布）,瑞士,斯里兰卡,圣卢西亚,圣基茨和尼维斯,韩国,西班牙,沙特阿拉伯,苏丹,塞内加尔,新加坡,圣赫勒拿,所罗门群岛,塞拉利昂,巴勒斯坦,圣马力诺,索马里,圣皮埃尔和密克隆,塞尔维亚,南苏丹,圣多美和普林西比,苏里南,斯洛伐克,斯洛文尼亚,瑞典,斯威士兰,塞舌尔,叙利亚,圣文森特和格林纳丁斯,南非,萨摩亚,多哥,泰国,塔吉克斯坦,托克劳,土库曼斯坦,帝汶,汤加,特立尼达和多巴哥,突尼斯,土耳其,图瓦卢,台湾,坦桑尼亚,特克斯和凯科斯群岛,巴哈马,冈比亚,英国,阿联酋,乌干达,乌克兰,乌拉圭,美国,乌兹别克斯坦,美属维京群岛,越南,瓦努阿图,委内瑞拉,梵蒂冈,瓦利斯和富图纳,阿拉伯撒哈拉民主共和国,也门,南斯拉夫,扎伊尔,赞比亚,津巴布韦";
    NSString *codes = @"297,93,244,101,355,376,102,61,43,994,54,374,247,684,672,213,226,880,359,973,375,501,105,591,55,104,673,975,267,257,32,229,387,1,235,262,385,855,236,107,682,57,238,506,53,108,357,420,56,86,225,237,253,109,45,110,593,20,291,372,251,240,503,670,689,594,358,679,500,33,298,691,262,241,995,233,350,224,590,49,671,592,30,111,299,502,245,852,504,509,36,62,91,98,964,354,972,39,112,962,81,7,254,996,686,965,831,856,961,231,218,41,266,370,352,371,853,212,377,373,261,960,52,692,258,222,113,596,230,265,60,269,223,356,95,382,976,1,850,264,687,227,672,234,505,683,31,47,977,674,64,599,968,92,507,64,51,63,680,675,48,121,351,595,974,40,7,250,389,353,242,41,94,1,1141,82,34,966,249,221,65,290,677,232,970,378,252,508,381,211,239,597,421,386,46,268,248,963,116,27,685,228,66,992,690,993,670,676,117,216,90,688,886,255,118,103,220,44,971,256,380,598,1,998,1,84,678,58,39,681,685,967,381,243,260,263";
    NSArray *countryArray = [countys componentsSeparatedByString:@","];
    NSArray *codeArray = [codes componentsSeparatedByString:@","];
    NSMutableArray *cityArr = [[NSMutableArray alloc] init];
    for (int i = 0; i < countryArray.count; i++) {
        [cityArr addObject:[[PlaceModel alloc] initWithNameStr:countryArray[i] andCode:codeArray[i]]];
    }
    //获得当前UILocalizedIndexedCollation对象并且引用赋给collation,A-Z的数据
    self.collation = [UILocalizedIndexedCollation currentCollation];
    //获得索引数和section标题数
    NSInteger index, sectionTitlesCount = [[_collation sectionTitles] count];
    //临时数据，存放section对应的Objs数组数据
    NSMutableArray *tmpSectionArr = [[NSMutableArray alloc] initWithCapacity:sectionTitlesCount];
    //设置sections数组初始化：元素包含userObjs数据的空数据
    for (index = 0; index < sectionTitlesCount; index++) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        [tmpSectionArr addObject:array];
    }
    //将用户数据进行分类，存储到对应的sesion数组中
    for (PlaceModel *placeModel in cityArr) {
        //根据timezone的localename，获得对应的的section number
        NSInteger sectionNumber = [_collation sectionForObject:placeModel collationStringSelector:@selector(name)];
        NSMutableArray *sectionPlaceArr = [tmpSectionArr objectAtIndex:sectionNumber];
        //添加内容到section中
        [sectionPlaceArr addObject:placeModel];
    }
    //排序，对每个已经分类的数组中的数据进行排序
    for (index = 0; index < sectionTitlesCount; index++) {
        NSMutableArray *placeArrForSection = [tmpSectionArr objectAtIndex:index];
        //获得排序结果
        NSArray *sortedUserObjsArrayForSection = [_collation sortedArrayFromArray:placeArrForSection collationStringSelector:@selector(name)];
        //替换原来数组
        [tmpSectionArr replaceObjectAtIndex:index withObject:sortedUserObjsArrayForSection];
    }
    self.indexArray = tmpSectionArr;
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return [[_collation sectionTitles] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *ObjsInSection = [_indexArray objectAtIndex:section];
    return [ObjsInSection count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CLCountryCodeTableViewCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CLCountryCodeTableViewCellTableViewCell"];
    NSArray *userNameInSection = [_indexArray objectAtIndex:indexPath.section];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    PlaceModel *userObj = [userNameInSection objectAtIndex:indexPath.row];
//    cell.countyNameLabel.text = userObj.name;
    if ([userObj.code isEqualToString:@"<null>"]) {
        cell.countyCodeLabel.text = @"";
    }else{
        cell.countyCodeLabel.text = [NSString stringWithFormat:@"+%@",userObj.code];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    PlaceModel *userObj = [[_indexArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    if (_countryCodeBlock) {
        _countryCodeBlock([NSString stringWithFormat:@"+%@",userObj.code]);
    }
    
}
/*
 * 跟section有关的设定
 */
//设置section的Header
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSArray *ObjsInSection = [_indexArray objectAtIndex:section];
    if(ObjsInSection == nil || [ObjsInSection count] <= 0) {
        return nil;
    }
    return [[_collation sectionTitles] objectAtIndex:section];
}
//设置索引标题
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return [_collation sectionIndexTitles];
}
//关联搜索
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    return [_collation sectionForSectionIndexTitleAtIndex:index];
}

@end
