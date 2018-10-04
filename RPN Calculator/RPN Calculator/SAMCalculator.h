//
//  SAMCalculator.h
//  RPN Calculator
//
//  Created by Samantha Gatt on 10/4/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAMCalculator : NSObject

typedef NS_ENUM(NSInteger, SAMCalculatorOperator) {
    SAMCalculatorOperatorAdd,
    SAMCalculatorOperatorSubtract,
    SAMCalculatorOperatorMultiply,
    SAMCalculatorOperatorDivide
};

@property (readonly) NSNumber *topValue;

- (void)pushNumber:(double)value;
- (void)applyCalculatorOperator:(SAMCalculatorOperator)calculatorOperator;
- (void)clear;

@end

NS_ASSUME_NONNULL_END
