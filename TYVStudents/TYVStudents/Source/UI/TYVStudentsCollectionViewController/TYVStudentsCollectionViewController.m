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
#import "TYVStudentCollectionViewCell.h"

TYVViewControllerProperty(TYVStudentsCollectionViewController, rootView, TYVStudentsCollectionView)

@interface TYVStudentsCollectionViewController ()

@end

@implementation TYVStudentsCollectionViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView registerClass:[TYVStudentCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    id cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}

@end
