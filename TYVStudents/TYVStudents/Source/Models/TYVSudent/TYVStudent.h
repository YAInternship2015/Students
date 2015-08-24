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
@property (nonatomic, strong)   UIImage     *photo;

+ (instancetype)student;

- (instancetype)initWithName:(NSString *)name
                   photo:(UIImage *)photo NS_DESIGNATED_INITIALIZER;

@end
