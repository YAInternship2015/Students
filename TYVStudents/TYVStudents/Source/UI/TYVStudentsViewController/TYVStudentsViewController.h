//
//  TYVStudentsViewController.h
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TYVStudents;

@interface TYVStudentsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong)   TYVStudents *studentsModel;

@end
