//
//  MlifeBaseModel+MBaseModelCategory.m
//  DeepTest
//
//  Created by liuxl on 2018/4/10.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MLifeBaseModel+MBaseModelCategory.h"
#import <objc/runtime.h>

@implementation MLifeBaseModel (MBaseModelCategory)

- (void)setStrCategory:(NSString *)strCategory
{
    objc_setAssociatedObject(self, @selector(strCategory), strCategory, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSString *)strCategory
{
   return objc_getAssociatedObject(self, @selector(strCategory));
}

@end
