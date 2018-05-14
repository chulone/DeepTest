//
//  MWebView.h
//  DeepTest
//
//  Created by liuxl on 2018/3/28.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MLifeBaseView.h"

typedef NS_ENUM(NSUInteger, MWebType) {
    MWebWK,
    MWebUI,
};


@interface MWebView : MLifeBaseView

+ (instancetype)createWebViewWithType:(MWebType)type;

@end
