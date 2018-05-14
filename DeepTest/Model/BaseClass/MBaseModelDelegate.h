//
//  MBaseModelDelegate.h
//  DeepTest
//
//  Created by liuxl on 2018/4/10.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MBaseModelDelegate <NSObject>

@property (nonatomic, strong) NSString *strDelegate;

- (void)baseModelDidChanged;

@end
