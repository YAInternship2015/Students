//
//  AppDelegate.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "AppDelegate.h"
#import "TYVStudentsViewController.h"
#import "TYVStudentsCollectionViewController.h"
#import "TYVStudentsNavigationController.h"

#import "TYVConstants.h"

#import "TYVStudent.h"
#import "TYVStudents.h"

#import "UIWindow+TYVExtentions.h"
#import "UIViewController+TYVExtentions.h"
#import "NSString+TYVExtensions.h"

static const NSUInteger TYVdefaultImagesCount = 10;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    TYVStudents *studentsModel = [TYVStudents studentsWithCapacity:TYVDefaultCellsCount];
    
    for (int i = 0; i < TYVDefaultCellsCount; i++) {
        NSUInteger index = arc4random_uniform(TYVdefaultImagesCount);
        NSString *photoName = [NSString stringWithFormat:@"%lu%@", index + 1,@".jpeg"];
        TYVStudent *student = [[TYVStudent alloc] initWithName:[NSString randomStringWithLength:TYVDefaultNameLength]
                                                     photoName:photoName];
        [studentsModel addStundent:student];
    }
    
    UIWindow *window = [UIWindow window];
    self.window = window;
    
//    TYVStudentsViewController  *controller = [TYVStudentsViewController controller];
//    controller.studentsModel = studentsModel;
//    window.rootViewController = controller;
    
    TYVStudentsCollectionViewController *controller = [TYVStudentsCollectionViewController controller];
    controller.studentsModel = studentsModel;
//    window.rootViewController = controller;
    
    TYVStudentsNavigationController *navigationController = [[TYVStudentsNavigationController alloc] initWithRootViewController:controller];
    window.rootViewController = navigationController;
    
    [window makeKeyAndVisible];
    
    return YES;
}

@end
