//
//  SAMStack.m
//  RPN Calculator
//
//  Created by Samantha Gatt on 10/4/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMStack.h"

@interface SAMStack ()

@property NSMutableArray *values;

@end

@implementation SAMStack

-(instancetype)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        _values = array.mutableCopy;
    }
    return self;
}

- (void)pushNumber:(NSNumber *)number {
    [self.values addObject:number];
}
- (NSNumber *)pop {
    NSNumber *last = self.values.lastObject;
    [self.values removeLastObject];
    return last;
}
- (NSNumber *)peek {
    return self.values.lastObject;
}

@end
