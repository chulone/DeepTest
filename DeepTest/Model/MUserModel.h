//
//  MUserModel.h
//  DeepTest
//
//  Created by liuxl on 2018/4/10.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import "MLifeBaseModel.h"

typedef NS_ENUM(NSUInteger, MUserSex) {
    MSexMan,
    MSexWoman
};

@interface MUserModel : MLifeBaseModel

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, assign) NSUInteger age;
@property (nonatomic, readonly, assign) MUserSex sex;

@property (nonatomic, copy) NSString *company;
@property (nonatomic, copy) NSString *address;


/**
 readonly属性赋值
 */
- (void)setName:(NSString *)name age:(NSUInteger)age sex:(MUserSex)sex;

/**
 单例
 */
+ (instancetype)sharedUser;

@end
