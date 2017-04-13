//
//  eleven.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/13.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "eleven.h"
#import <objc/objc-runtime.h>

@implementation eleven

- (void)test{

    //传递格式：
   // OBJC_EXPORT void objc_msgSend(void /* id self, SEL op, ... */ )
    //这是个参数个数可变的函数，能接受两个活两个以上的参数，第一个参数代表接受者，第二个参数代表选择子。
    //关于这个尾调用优化和方法列表还是看文章吧。
}

@end
