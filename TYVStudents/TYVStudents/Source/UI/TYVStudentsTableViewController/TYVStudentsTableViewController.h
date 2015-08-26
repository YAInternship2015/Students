//
//  TYVStudentsTableViewController.h
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYVStudentsViewController.h"

@class TYVStudents;

@interface TYVStudentsTableViewController : TYVStudentsViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong)   TYVStudents *studentsModel;

@end
