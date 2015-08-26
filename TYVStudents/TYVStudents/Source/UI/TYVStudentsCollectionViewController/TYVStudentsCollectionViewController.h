//
//  TYVStudentsCollectionViewController.h
//  TYVStudents
//
//  Created by Yurii Trokhymchuk on 8/25/15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYVStudentsViewController.h"

@class TYVStudents;

@interface TYVStudentsCollectionViewController : TYVStudentsViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (nonatomic, strong)   TYVStudents *studentsModel;

@end
