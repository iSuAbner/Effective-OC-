//
//  AbnerPerson.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/15.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbnerPerson : NSObject

@property (nonatomic, copy) NSString * firstName;
@property (nonatomic, copy) NSString * lastName;

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
@end
