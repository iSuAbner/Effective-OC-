//
//  WangjingClass.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/5.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "WangjingClass.h"

@implementation WangjingClass

//原来的单例方法 解析：
+ (id)sharedInstance{

    static WangjingClass * sharedInstance = nil;
    //为了保证线程安全。将上述代码包裹在同步块里面。
    @synchronized (self) {
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}

//GCD单例方法
+ (id)iSuSharedInstance{

    static WangjingClass * sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}
@end
