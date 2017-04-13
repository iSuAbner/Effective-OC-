//
//  WangjingClass.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/5.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WangjingClass : NSObject

//原来的单例方法 解析：
+ (id)sharedInstance;

//GCD单例方法
+ (id)iSuSharedInstance;

@end
