//
//  MlifeBaseModel.h
//  DeepTest
//
//  Created by liuxl on 2018/3/27.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBaseModelDelegate.h"


typedef void(^BaseModelBlock)(NSString *str);


@interface MLifeBaseModel : NSObject

@property (nonatomic, strong) NSString *modelString;

@property (nonatomic, weak) id<MBaseModelDelegate> delegate;
@property (nonatomic, copy) BaseModelBlock modelBlock;

@end
