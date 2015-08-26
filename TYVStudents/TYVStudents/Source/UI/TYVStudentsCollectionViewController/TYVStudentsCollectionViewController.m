//
//  TYVStudentsCollectionViewController.m
//  TYVStudents
//
//  Created by Yurii Trokhymchuk on 8/25/15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentsCollectionViewController.h"
#import "TYVMacro.h"
#import "TYVStudentsCollectionView.h"
#import "TYVStudents.h"
#import "TYVStudent.h"
#import "TYVStudentCollectionViewCell.h"
#import "TYVStudentsTableViewController.h"

#import "UIViewController+TYVExtentions.h"
#import "UINib+TYVExtentions.h"

static NSString * const TYVDefaultCellIndentifier  = @"cell";

TYVViewControllerProperty(TYVStudentsCollectionViewController, rootView, TYVStudentsCollectionView)

@interface TYVStudentsCollectionViewController ()

@end

@implementation TYVStudentsCollectionViewController

#pragma mark -
#pragma mark Accessors

- (NSString *)buttonTitle {
    return @"TableView";
}

#pragma mark -
#pragma mark View LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.rootView.collectionView registerNib:[UINib nibWithClass:[TYVStudentCollectionViewCell class]]
                   forCellWithReuseIdentifier:TYVDefaultCellIndentifier];
}

#pragma mark -
#pragma mark Button Handler

- (void)onBarButtonClick {
    NSLog(@"HELLO WORLD");
    
    TYVStudentsTableViewController  *controller = [TYVStudentsTableViewController controller];
    controller.studentsModel = self.studentsModel;
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark -
#pragma mark UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.studentsModel count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TYVStudentCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:TYVDefaultCellIndentifier
                                                                                   forIndexPath:indexPath];
    [cell fillWithModel:self.studentsModel[indexPath.row]];
    
    return cell;
}

@end
