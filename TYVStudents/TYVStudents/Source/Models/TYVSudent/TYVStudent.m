//
//  TYVStudent.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudent.h"

@implementation TYVStudent

#pragma mark -
#pragma mark Class Methods

+ (instancetype)student {
    return [[self alloc] initWithName:nil photo:nil];
}

#pragma mark -
#pragma Initializations and Dealloations

- (instancetype)initWithName:(NSString *)name
                       photo:(UIImage *)photo {
    self = [super init];
    if (self) {
        self.name = name;
        self.photo = photo;
    }
    
    return self;
}

@end
