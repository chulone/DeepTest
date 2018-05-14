//
//  MUserModel.m
//  DeepTest
//
//  Created by liuxl on 2018/4/10.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MUserModel.h"

@implementation MUserModel

+ (instancetype)sharedUser
{
    static MUserModel *_sharedUser = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedUser = [[self alloc] init];
    });
    return _sharedUser;
}

- (void)setName:(NSString *)name age:(NSUInteger)age sex:(MUserSex)sex
{
    _name = [name copy];//系统会自动copy操作，但重写赋值需加copy
    _age = age;
    _sex = sex;
}

@end
