//
//  PosAppDelegate.m
//  PosProject
//
//  Created by xiaofang.wu on 13-5-4.
//  Copyright (c) 2013年 xiaofang.wu. All rights reserved.
//

#import "PosAppDelegate.h"
#import "PosRootViewController.h"
#import "PosCore.h"
#import "PosLoginViewController.h"
@interface PosAppDelegate()<PosLoginDelegate>
@property (nonatomic,retain)UIViewController* posRootViewControl;
@end

@implementation PosAppDelegate

- (void)dealloc
{
    
    
    [_window release];
    self.posRootViewControl = nil;
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    self.posRootViewControl = [[[PosRootViewController alloc] init] autorelease];
    if(![[PosCore sharedInstance].userManager isLogin]){
        [self presentLoginViewControl];
    }else{
        self.window.rootViewController = self.posRootViewControl;

    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Public
- (void)presentLoginViewControl
{
    
    PosLoginViewController* loginViewControl = [[PosLoginViewController alloc] init];
    loginViewControl.delegate = self;
    UINavigationController* loginNav = [[UINavigationController alloc] initWithRootViewController:loginViewControl];
    self.window.rootViewController = loginNav;
    [loginViewControl release];
    [loginNav release];

}

#pragma mark - PosLoginDelegate

- (void)loginSuccess
{
    self.window.rootViewController = self.posRootViewControl;
}


@end
