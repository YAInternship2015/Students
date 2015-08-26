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

#import "UINib+TYVExtentions.h"

static NSString * const TYVDefaultCellIndentifier  = @"cell";

TYVViewControllerProperty(TYVStudentsCollectionViewController, rootView, TYVStudentsCollectionView)

@interface TYVStudentsCollectionViewController ()

@end

@implementation TYVStudentsCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.rootView.collectionView registerNib:[UINib nibWithClass:[TYVStudentCollectionViewCell class]]
                   forCellWithReuseIdentifier:TYVDefaultCellIndentifier];

}

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
