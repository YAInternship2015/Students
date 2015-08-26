//
//  TYVStudentTableViewCell.h
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TYVStudent;

@interface TYVStudentTableViewCell : UITableViewCell
@property (nonatomic, strong)   IBOutlet UIImageView    *photoImageView;
@property (nonatomic, strong)   IBOutlet UILabel        *nameLabel;

- (void)fillWithModel:(TYVStudent *)model;

@end
