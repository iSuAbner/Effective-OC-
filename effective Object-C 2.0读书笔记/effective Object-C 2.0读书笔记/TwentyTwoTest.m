//
//  TwentyTwoTest.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "TwentyTwoTest.h"

@interface TwentyTwoTest(){
   
    NSString * _str ;
}

@end

@implementation TwentyTwoTest


- (void)test{
    TwentyTwoTest * test =[[TwentyTwoTest alloc]init];
    test -> _str =[NSString stringWithFormat:@"what"];
}

@end
