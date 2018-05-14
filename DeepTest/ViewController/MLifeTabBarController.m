//
//  MLifeTabBarController.m
//  DeepTest
//
//  Created by liuxl on 2018/4/11.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MLifeTabBarController.h"

#import "MChoicenessViewController.h"//精选
#import "MGiftViewController.h"//有礼
#import "MFindViewController.h"//发现
#import "MCardViewController.h"//用卡
#import "MUserViewController.h"//我的

@interface MLifeTabBarController () <UITabBarDelegate, UITabBarControllerDelegate>

@end

@implementation MLifeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [self initTabChildControllers];
}

- (void)initTabChildControllers
{
    MChoicenessViewController *choicenessVC = [[MChoicenessViewController alloc] init];
    MGiftViewController *giftVC = [[MGiftViewController alloc] init];
    MFindViewController *findVC = [[MFindViewController alloc] init];
    MCardViewController *cardVC = [[MCardViewController alloc] init];
    MUserViewController *userVC = [[MUserViewController alloc] init];
    
    choicenessVC.title = @"精选";
    giftVC.title = @"有礼";
    findVC.title = @"发现";
    cardVC.title = @"用卡";
    userVC.title = @"我的";
    
    UINavigationController *navChoiceness = [[UINavigationController alloc] initWithRootViewController:choicenessVC];
    UINavigationController *navGift = [[UINavigationController alloc] initWithRootViewController:giftVC];
    UINavigationController *navFind = [[UINavigationController alloc] initWithRootViewController:findVC];
    UINavigationController *navCard = [[UINavigationController alloc] initWithRootViewController:cardVC];
    UINavigationController *navUser = [[UINavigationController alloc] initWithRootViewController:userVC];
    
    [choicenessVC.tabBarItem setImage:[UIImage imageNamed:@"btn_select"]];
    [choicenessVC.tabBarItem setSelectedImage:[UIImage imageNamed:@"btn_select_p"]];
    
    
    self.viewControllers = @[navChoiceness, navGift, navFind, navCard, navUser];
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    
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
