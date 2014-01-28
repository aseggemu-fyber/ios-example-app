//
//  AppDelegate.h
//  Lumio
//
//  Created by Joanne Dyer on 1/19/13.
//  Copyright Joanne Dyer 2013. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface AppController : NSObject <UIApplicationDelegate, CCDirectorDelegate>
{
	UIWindow *window_;
	UINavigationController *navController_;

	CCDirectorIOS	*director_;	// weak ref
}

extern const BOOL useVideo;

@property (nonatomic, retain) UIWindow *window;
@property (readonly) UINavigationController *navController;
@property (readonly) CCDirectorIOS *director;

@end