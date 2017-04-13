//
//  NSString+EOCMyAdditions.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/8.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "NSString+EOCMyAdditions.h"
#import <objc/runtime.h>

@implementation NSString (EOCMyAdditions)

+(void)load{

    Method originalMethod =class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swappedMethod = class_getInstanceMethod([NSString class], @selector(eoc_myLowercaseString));
    method_exchangeImplementations(originalMethod, swappedMethod);
    

}

- (NSString*)eoc_myLowercaseString{

    NSString * lowrcase = [self eoc_myLowercaseString];
    NSLog(@"%@ => %@",self,lowrcase);
    return lowrcase;
}

@end
