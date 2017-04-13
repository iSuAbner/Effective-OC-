//
//  YeZhiShengPerson.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/16.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YeZhiShengPerson : NSObject

@property (nonatomic,copy,readonly) NSString * firstName;
@property (nonatomic,copy,readonly) NSString * lastName;
@property (nonatomic,strong,readonly) NSSet * firends;

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString*)lastName;
- (void)addFirend:(YeZhiShengPerson*)person;
- (void)removeFriend:(YeZhiShengPerson*)person;

@end
