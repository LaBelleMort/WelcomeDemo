//
//  AppDelegate.m
//  welcomeDemo
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/18.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "AppDelegate.h"
#import "welcomeController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self showWelcomeViewController];
    
    //监听WelcomeViewController发出的切换根控制的通知
    [[NSNotificationCenter defaultCenter] addObserverForName:@"EPChangeDefaultNotification" object:nil queue:nil usingBlock:^(NSNotification * _Nonnull note) {
        
        [self showDefaultViewController];
        
    }];
    
    return YES;
}

- (void)showWelcomeViewController {
    // 创建欢迎界面
    welcomeController *welcomeVC = [[welcomeController alloc] init];
    //设置根控制器
    self.window.rootViewController  = welcomeVC;
}

- (void)showDefaultViewController {
    //设置主界面
    ViewController *mainVC = [[ViewController alloc] init];
    //设置根控制器
    self.window.rootViewController = mainVC;
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
