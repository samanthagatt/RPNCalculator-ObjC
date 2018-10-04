//
//  SAMDigitAccumulator.m
//  RPN Calculator
//
//  Created by Samantha Gatt on 10/4/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMDigitAccumulator.h"

@interface SAMDigitAccumulator ()

@property NSMutableArray *digits;

@end

@implementation SAMDigitAccumulator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _digits = [NSMutableArray arrayWithArray:@[]];
    }
    return self;
}

- (double)value {
    NSString *numberAsString = [self.digits componentsJoinedByString:@""];
    double number = numberAsString.doubleValue;
    return number;
}

- (void)addDigitWithNumericValue:(NSInteger)number {
    NSNumber *digit = [NSNumber numberWithInteger:number];
    NSString *string = digit.stringValue;
    [self.digits addObject:string];
}
- (void)addDecimalPoint {
    [self.digits addObject:@"."];
}
- (void)clear {
    [self.digits removeAllObjects];
}

@end
