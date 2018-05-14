//
//  MWebViewModel.h
//  DeepTest
//
//  Created by liuxl on 2018/3/28.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MLifeBaseViewModel.h"

@interface MWebViewModel : MLifeBaseViewModel

/**
 web url request
 */
@property (nonatomic, readwrite, copy) NSURLRequest *request;

/**
 下拉刷新 默认 NO
 */
@property (nonatomic, readwrite, assign) BOOL shouldPullDownToRefresh;

/**
 是否取消导航栏的title等于webView的title。默认是不取消 NO
 */
@property (nonatomic, readwrite, assign) BOOL shouldDisableWebViewTitle;

/**
 是否取消关闭按钮。默认是不取消 NO
 */
@property (nonatomic, readwrite, assign) BOOL shouldDisableWebViewClose;

/**
 是否隐藏原生的导航栏 默认不隐藏 NO
 */
@property (nonatomic, readwrite, assign) BOOL shouldHideNavigationBar;

@end
