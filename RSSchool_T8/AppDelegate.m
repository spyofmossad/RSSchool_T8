//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Dzmitry Navitski on 7/15/21.
//

#import "AppDelegate.h"
#import "CanvasViewController.h"
#import "PaletteViewController.h"
#import "UIColor+CustomColor.h"
#import "UIFont+Montserrat.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    CanvasViewController *main = [CanvasViewController new];
    
    UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController: main];
    [UINavigationBar appearance].tintColor = [UIColor lightGreenSea];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName: [UIFont montRegularWithSize:17]}];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName: [UIFont montRegularWithSize:17]} forState: UIControlStateNormal];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName: [UIFont montRegularWithSize:17]} forState: UIControlStateHighlighted];
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen.mainScreen bounds]];
    window.rootViewController = navigation;
    self.window = window;
    [window makeKeyAndVisible];
    return YES;
}

@end
