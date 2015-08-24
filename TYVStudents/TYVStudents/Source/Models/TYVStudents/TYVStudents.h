//
//  TYVStudents.h
//  TYVStudents
//
//  Created by YURII on 24.08.15.
//  Copyright (c) 2015 YURII. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TYVStudent;

@interface TYVStudents : NSObject
@property (nonatomic, readonly) NSArray *array;

+ (instancetype)studentsWithCapacity:(NSUInteger)capacity;
- (instancetype)initWithCapacity:(NSUInteger)capacity;

- (void)addStundent:(TYVStudent *)student;
- (void)removeStundent:(TYVStudent *)student;
- (void)containsStundent:(TYVStudent *)student;

- (TYVStudent *)studentAtIndex:(NSUInteger)index;
- (id)objectAtIndexedSubscript:(NSUInteger)index;

- (NSUInteger)count;

@end
