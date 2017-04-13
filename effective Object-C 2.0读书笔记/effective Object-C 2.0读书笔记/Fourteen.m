//
//  Fourteen.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/13.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "Fourteen.h"

@implementation Fourteen

- (void)test{
    NSMutableDictionary * dict =[NSMutableDictionary new];
    if ([dict isMemberOfClass:[NSDictionary class]]) {
        
        NSLog(@"dict Member  NSDictionary");
    }
    if ([dict isMemberOfClass:[NSMutableDictionary class]]) {
       
        NSLog(@"dict Member  NSMutableDictionary");
    }
    if ([dict isKindOfClass:[NSDictionary class]]) {
        
        NSLog(@"dict Kind NSDictionary");
    }
    [dict isKindOfClass:[NSArray class]];
    
    
}

@end
