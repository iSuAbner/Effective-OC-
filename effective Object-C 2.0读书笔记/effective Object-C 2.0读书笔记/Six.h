//
//  Six.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/12.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Six : NSObject

@property (nonatomic,copy,getter=iS) NSString * iSuname;
@property (nonatomic,copy) NSString * lastName;
@property (nonatomic,copy)NSString * firstName;

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName;
- (void)test;
@end
