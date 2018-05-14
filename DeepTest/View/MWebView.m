
//
//  MWebView.m
//  DeepTest
//
//  Created by liuxl on 2018/3/28.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MWebView.h"

@implementation MWebView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


+ (instancetype)createWebViewWithType:(MWebType)type
{
    MWebView *view;
    switch (type) {
        case MWebUI:
            view = (MWebView *)[[UIWebView alloc] init];
            break;
        case MWebWK:
            view = (MWebView *)[[WKWebView alloc] init];
            break;
        default:
            break;
    }
    return view;
}

@end
