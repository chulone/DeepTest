//
//  MlifeBaseViewController.m
//  DeepTest
//
//  Created by liuxl on 2018/3/27.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MLifeBaseViewController.h"

@interface MLifeBaseViewController ()

@end

@implementation MLifeBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.userShared = [MUserModel sharedUser];
    NSMutableString *strName = [[NSMutableString alloc] initWithString:@"李四"];
    [_userShared setName:strName age:22 sex:MSexMan];
    [strName appendString:@"COPY属性不会随指针更改"];
    _userShared.company = @"四方";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"__%@调用dealloc__",self);
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
