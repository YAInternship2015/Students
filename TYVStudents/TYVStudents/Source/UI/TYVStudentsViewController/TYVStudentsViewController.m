//
//  TYVStudentsViewController.m
//  TYVStudents
//
//  Created by YURII on 26.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentsViewController.h"

@interface TYVStudentsViewController ()

@end

@implementation TYVStudentsViewController

@dynamic buttonTitle;

#pragma mark -
#pragma mark Accessors

- (NSString *)buttonTitle {
    return nil;
}

#pragma mark -
#pragma mark View LifeCycle

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:self.buttonTitle
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(onBarButtonClick)];
}

#pragma mark -
#pragma mark Button Handler

- (void)onBarButtonClick {
    
}

@end
