//
//  TYVStudents.m
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import "TYVStudents.h"

@interface TYVStudents ()
@property (nonatomic, strong) NSMutableArray    *mutableArray;

@end

@implementation TYVStudents

@dynamic array;

#pragma mark -
#pragma mark Class Methods

+ (instancetype)studentsWithCapacity:(NSUInteger)capacity {
    return [[self alloc] initWithCapacity:capacity];
}

#pragma mark -
#pragma mark Initializations and Deallocations

- (instancetype)initWithCapacity:(NSUInteger)capacity {
    self = [super init];
    if (self) {
        self.mutableArray = [NSMutableArray arrayWithCapacity:capacity];
    }
    
    return self;
}

#pragma mark -
#pragma mark Accessors

- (NSArray *)array {
    @synchronized (self) {
        return [self.mutableArray copy];
    }
}

#pragma mark -
#pragma mark Public Methods

- (void)addStundent:(TYVStudent *)student {
    @synchronized (self) {
        [self.mutableArray addObject:student];
    }
}

- (void)removeStundent:(TYVStudent *)student {
    @synchronized (self) {
        [self.mutableArray removeObject:student];
    }
}

- (void)containsStundent:(TYVStudent *)student {
    @synchronized (self) {
        [self.mutableArray containsObject:student];
    }
}

- (TYVStudent *)studentAtIndex:(NSUInteger)index {
    @synchronized (self) {
        return self.mutableArray[index];
    }
}

- (id)objectAtIndexedSubscript:(NSUInteger)index {
    @synchronized (self) {
        return self.mutableArray[index];
    }
}

- (NSUInteger)count {
    @synchronized (self) {
        return [self.mutableArray count];
    }
}

@end
