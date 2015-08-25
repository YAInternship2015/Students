//
//  TYVStudent.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudent.h"
#import "TYVConstants.h"

#import "NSString+TYVExtensions.h"

@implementation TYVStudent

@dynamic photo;

#pragma mark -
#pragma mark Class Methods

+ (instancetype)student {
    return [[self alloc] initWithName:[NSString randomStringWithLength:TYVDefaultNameLength]
                            photoName:nil];
}

#pragma mark -
#pragma Initializations and Dealloations

- (instancetype)initWithName:(NSString *)name
                       photoName:(NSString *)photoName {
    self = [super init];
    if (self) {
        self.name = name;
        self.photoName = photoName;
    }
    
    return self;
}

#pragma mark -
#pragma Accessors

- (UIImage *)photo  {
    return [UIImage imageNamed:self.photoName];
}

@end
