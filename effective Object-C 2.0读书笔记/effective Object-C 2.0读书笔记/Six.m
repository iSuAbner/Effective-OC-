//
//  Six.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/12.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "Six.h"

@implementation Six

//变化名字：
//@synthesize firstName = _myFirstName;
//@synthesize lastName = _myLastName;

//@dynamic firstName,lastName;

- (void)test{
    
    self.iSuname = @"iSu";
    
    if ([self.iS isEqualToString:@"iSu"]) {
        NSLog(@"get获取的方法确实是iSu");
    }
}

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{

    //不copy也是可以 不过就没有那个的语义了 以后可能会出现错误
    //为什么不使用 self.firstName = firstName;
    if (self =[super init]) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    return self;
}


@end
