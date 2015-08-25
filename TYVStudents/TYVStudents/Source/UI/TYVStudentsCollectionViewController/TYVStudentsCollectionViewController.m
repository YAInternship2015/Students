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

TYVViewControllerProperty(TYVStudentsCollectionViewController, rootView, TYVStudentsCollectionView)

@interface TYVStudentsCollectionViewController ()

@end

@implementation TYVStudentsCollectionViewController

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
