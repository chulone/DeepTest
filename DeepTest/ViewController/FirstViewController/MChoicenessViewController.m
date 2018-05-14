//
//  MChoicenessViewController.m
//  DeepTest
//
//  Created by liuxl on 2018/4/11.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MChoicenessViewController.h"
#import "MUserModel.h"
#import "MWebViewController.h"

@interface MChoicenessViewController () <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *arrTable;

@end

@implementation MChoicenessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"readonly NAME:%@, AGE:%lu, COMPANY:%@, SEX:%lu",self.userShared.name, (unsigned long)self.userShared.age, self.userShared.company, (unsigned long)self.userShared.sex);
    
    self.arrTable = [NSMutableArray arrayWithArray:@[@"WebView", @"Nothing", @"3"]];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellID"];
    [_tableView reloadData];
    
    
    //测试两个数组是否包含
    NSArray *arrTest = @[@"WebView", @"3", @"Nothing", @"6", @"4", @"5"];
    NSSet *set1 = [NSSet setWithArray:self.arrTable];
    NSSet *set2 = [NSSet setWithArray:arrTest];
    if ([set1 isSubsetOfSet:set2]) {
        NSLog(@"set2包含set1");
    }
    else {
        NSLog(@"不包含");
    }
}

#pragma mark - TableView DataSource / Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrTable.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    [cell.textLabel setText:_arrTable[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            MWebViewController *vc = [[MWebViewController alloc] init];
            vc.webURL = @"http://47.89.29.80:88/public/WorkAssistant_online/";
            vc.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
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
