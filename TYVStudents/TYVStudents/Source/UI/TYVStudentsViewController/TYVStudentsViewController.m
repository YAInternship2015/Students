//
//  TYVStudentsViewController.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentsViewController.h"
#import "TYVStudentsView.h"

#import "TYVMacro.h"

TYVViewControllerProperty(TYVStudentsViewController, rootView, TYVStudentsView)

@interface TYVStudentsViewController ()

@end

@implementation TYVStudentsViewController

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
