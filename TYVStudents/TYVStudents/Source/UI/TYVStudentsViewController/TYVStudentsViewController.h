//
//  TYVStudentsViewController.h
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <UIKit/UIKit.h>

static const NSUInteger TYVDefaultCellsCount    =   10;

@class TYVStudents;

@interface TYVStudentsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong)   TYVStudents *studentsModel;

@end
