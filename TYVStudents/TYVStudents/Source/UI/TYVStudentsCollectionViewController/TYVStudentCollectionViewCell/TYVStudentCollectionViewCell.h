//
//  TYVStudentCollectionViewCell.h
//  TYVStudents
//
//  Created by Yurii Trokhymchuk on 8/25/15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TYVStudent;

@interface TYVStudentCollectionViewCell : UICollectionViewCell
@property (nonatomic, strong)   IBOutlet UIImageView    *photoImageView;

- (void)fillWithModel:(TYVStudent *)model;

@end
