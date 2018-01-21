//
//  AppDelegate.m
//  WJViewControllerTest
//
//  Created by William Jockusch on 12/31/17.
//  Copyright © 2017 William Jockusch. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"WJTabBarController" bundle:nil];
  UITabBarController* controller = nil;
  BOOL useNib = true;
  if (useNib) {
    controller = [storyboard instantiateViewControllerWithIdentifier:@"WJTabBarController"];
  } else {
    controller = [[UITabBarController alloc]initWithNibName:nil bundle:nil];
  }
  UIViewController* item1 = [[UIViewController alloc]initWithNibName:nil bundle:nil];
  UITabBarItem* search = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemSearch tag:2];
  UITabBarItem* history = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:3];

  UIViewController* item2 = [[UIViewController alloc]initWithNibName:nil bundle:nil];
  item1.tabBarItem = search;
  item2.tabBarItem = history;
  controller.viewControllers = @[item1, item2];
  UIWindow* window = self.window;
  [window setRootViewController:controller];
  return YES;
}



@end
