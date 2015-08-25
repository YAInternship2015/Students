//
//  TYVStudent.h
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TYVStudent : NSObject
@property (nonatomic, copy)     NSString    *name;
@property (nonatomic, copy)     NSString    *photoName;
@property (nonatomic, readonly) UIImage     *photo;

+ (instancetype)student;

- (instancetype)initWithName:(NSString *)name
                   photoName:(NSString *)photoName NS_DESIGNATED_INITIALIZER;

@end
