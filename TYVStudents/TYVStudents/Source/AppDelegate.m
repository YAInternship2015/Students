//
//  AppDelegate.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "AppDelegate.h"
#import "TYVStudentsViewController.h"

#import "TYVStudent.h"
#import "TYVStudents.h"

#import "UIWindow+TYVExtentions.h"
#import "UIViewController+TYVExtentions.h"
#import "NSString+TYVExtensions.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    TYVStudents *studentsModel = [TYVStudents studentsWithCapacity:TYVDefaultCellsCount];
    
    for (int i = 0; i < TYVDefaultCellsCount; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d%@", i + 1,@".jpeg"]];
        TYVStudent *student = [[TYVStudent alloc] initWithName:[NSString randomStringWithLength:5] photo:image];
        [studentsModel addStundent:student];
    }
    
    UIWindow *window = [UIWindow window];
    self.window = window;
    
    TYVStudentsViewController  *controller = [TYVStudentsViewController controller];
    controller.studentsModel = studentsModel;
    window.rootViewController = controller;
    
    [window makeKeyAndVisible];
    
    return YES;
}

@end
