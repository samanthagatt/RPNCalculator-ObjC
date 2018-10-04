//
//  SAMStack.h
//  RPN Calculator
//
//  Created by Samantha Gatt on 10/4/18.
//  Copyright © 2018 Samantha Gatt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAMStack : NSObject

-(instancetype)initWithArray:(NSArray *)array;

-(void)pushNumber:(NSNumber *)number;
-(NSNumber *)pop;
-(NSNumber *)peek;

@end

NS_ASSUME_NONNULL_END
