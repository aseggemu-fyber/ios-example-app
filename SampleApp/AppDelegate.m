//
//  AppDelegate.m
//  SampleApp
//
//  Created by Monroe Ekilah on 7/21/15.
//  Copyright (c) 2015 heyzap.com. All rights reserved.
//

#import <HeyzapAds/HeyzapAds.h>
// heyzap imports
@import AdSupport;
@import CoreGraphics;
@import CoreTelephony;
@import EventKit;
@import EventKitUI;
@import MobileCoreServices;
@import QuartzCore;
@import Security;
@import StoreKit;
@import iAd;
// end heyzap imports

#import "AppDelegate.h"
#import "HeyzapSampleAppViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    HeyzapSampleAppViewController *vc = [[HeyzapSampleAppViewController alloc] init];
    [[[UIApplication sharedApplication] keyWindow] setRootViewController:vc];
    
    // setup Heyzap
    //[HZLog setThirdPartyLoggingEnabled:YES];
    [HZLog setDebugLevel:HZDebugLevelVerbose];
    [HeyzapAds startWithPublisherID:@"ENTER_YOUR_PUBLISHER_ID_HERE" andOptions:HZAdOptionsDisableAutomaticIAPRecording | HZAdOptionsDisableAutoPrefetching];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
