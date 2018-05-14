//
//  AppDelegate.h
//  DeepTest
//
//  Created by liuxl on 2018/3/26.
//  Copyright © 2018年 liuxl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

