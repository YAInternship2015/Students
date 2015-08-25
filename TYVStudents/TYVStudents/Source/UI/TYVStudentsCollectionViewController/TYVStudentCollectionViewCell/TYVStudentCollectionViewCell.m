//
//  TYVStudentCollectionViewCell.m
//  TYVStudents
//
//  Created by Yurii Trokhymchuk on 8/25/15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentCollectionViewCell.h"
#import "TYVStudent.h"

@implementation TYVStudentCollectionViewCell

#pragma mark -
#pragma mark Public Methods

- (void)fillWithModel:(TYVStudent *)model {
    self.photoImageView.image = model.photo;
}

@end
