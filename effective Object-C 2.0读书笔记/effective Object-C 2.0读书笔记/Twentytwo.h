//
//  Twentytwo.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Twentytwo : NSObject<NSCopying>

@property (nonatomic, copy, readonly) NSString * firstName;
@property (nonatomic, copy, readonly) NSString * lastName;

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
- (void)addFriend:(Twentytwo *)person;
- (void)removeFriend:(Twentytwo *)person;

@end
