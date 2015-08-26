//
//  TYVStudentsTableViewController.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentsTableViewController.h"
#import "TYVStudentsTableView.h"
#import "TYVStudentTableViewCell.h"
#import "TYVStudents.h"
#import "TYVStudentsCollectionViewController.h"

#import "UIViewController+TYVExtentions.h"
#import "UITableView+TYVExtentions.h"
#import "TYVMacro.h"

TYVViewControllerProperty(TYVStudentsTableViewController, rootView, TYVStudentsTableView)

@interface TYVStudentsTableViewController ()

@end

@implementation TYVStudentsTableViewController

#pragma mark -
#pragma mark Accessors

- (NSString *)buttonTitle {
    return @"CollectionView";
}

#pragma mark -
#pragma mark Button Handler

- (void)onBarButtonClick {
    TYVStudentsCollectionViewController  *controller = [TYVStudentsCollectionViewController controller];
    controller.studentsModel = self.studentsModel;
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.studentsModel count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYVStudentTableViewCell *cell = [tableView reusableCellWithClass:[TYVStudentTableViewCell class]];
    [cell fillWithModel:self.studentsModel[indexPath.row]];
    
    return cell;
}

@end
