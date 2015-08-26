//
//  TYVStudentTableViewCell.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudentTableViewCell.h"
#import "TYVStudent.h"

@implementation TYVStudentTableViewCell

#pragma mark -
#pragma mark Public Methods

- (void)fillWithModel:(TYVStudent *)model {
    self.photoImageView.image = model.photo;
    self.nameLabel.text = model.name;
}

@end
