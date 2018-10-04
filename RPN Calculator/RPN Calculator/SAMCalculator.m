//
//  SAMCalculator.m
//  RPN Calculator
//
//  Created by Samantha Gatt on 10/4/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import "SAMCalculator.h"
#import "SAMStack.h"

@interface SAMCalculator ()

@property SAMStack *stack;

@end

@implementation SAMCalculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        _stack = [[SAMStack alloc] initWithArray:@[@0.0, @0.0]];
    }
    return self;
}

- (NSNumber *)topValue {
    return [self.stack peek];
}

- (void)pushNumber:(double)value {
    NSNumber *number = [NSNumber numberWithDouble:value];
    [self.stack pushNumber:number];
}
- (void)applyCalculatorOperator:(SAMCalculatorOperator)calculatorOperator {
    
    double operand2 = [[self.stack pop] doubleValue];
    double operand1 = [[self.stack pop] doubleValue];
    
    double result = 0.0;
    switch (calculatorOperator) {
        case SAMCalculatorOperatorAdd:
            result = operand1 + operand2;
            break;
        case SAMCalculatorOperatorSubtract:
            result = operand1 - operand2;
            break;
        case SAMCalculatorOperatorMultiply:
            result = operand1 * operand2;
            break;
        case SAMCalculatorOperatorDivide:
            result = operand1 / operand2;
            break;
    }
    [self.stack pushNumber:[NSNumber numberWithDouble:result]];
}
- (void)clear {
    self.stack = [[SAMStack alloc] initWithArray:@[@0.0, @0.0]];
}

@end
