//
//  SAMDigitAccumulator.h
//  RPN Calculator
//
//  Created by Samantha Gatt on 10/4/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAMDigitAccumulator : NSObject

-(void)addDigitWithNumericValue:(NSInteger)number;
-(void)addDecimalPoint;
-(void)clear;

@property (readonly) double value;

@end

NS_ASSUME_NONNULL_END
