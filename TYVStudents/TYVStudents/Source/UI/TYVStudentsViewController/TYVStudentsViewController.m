//
//  TYVStudentsViewController.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentsViewController.h"
#import "TYVStudentsView.h"
#import "TYVStudentViewCell.h"
#import "TYVStudents.h"

#import "UITableView+TYVExtentions.h"
#import "TYVMacro.h"

static const NSUInteger TYVDefaultCellsCount    =   10;

TYVViewControllerProperty(TYVStudentsViewController, rootView, TYVStudentsView)

@interface TYVStudentsViewController ()

@end

@implementation TYVStudentsViewController

#pragma mark -
#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return TYVDefaultCellsCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYVStudentViewCell *cell = [tableView reusableCellWithClass:[TYVStudentViewCell class]];
    [cell fillWithModel:self.studentsModel[indexPath.row]];
    
    return cell;
}

@end
