//
//  TYVSudent.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVSudent.h"

@implementation TYVSudent

#pragma mark -
#pragma mark Class Methods

+ (instancetype)sudent {
    return [[self alloc] initWithName:nil photoName:nil];
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

@end
