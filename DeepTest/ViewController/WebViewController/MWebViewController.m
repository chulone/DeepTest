//
//  MWebViewController.m
//  DeepTest
//
//  Created by liuxl on 2018/3/28.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MWebViewController.h"
#import "MWebView.h"

@interface MWebViewController () <WKNavigationDelegate,WKUIDelegate>

@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSURLRequest *request;

@end

@implementation MWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self initRequest];
    [self.webView loadRequest:self.request];
}

- (void)initRequest
{
    self.request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.webURL] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30];
}

- (WKWebView *)webView {
    if (!_webView) {
        _webView = [[WKWebView alloc] init];
        [self.view addSubview:_webView];
        [_webView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.and.bottom.and.left.and.right.equalTo(self.view);
        }];
    }
    return _webView;
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
