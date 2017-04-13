//
//  iSuNetworkFetcher.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/30.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "iSuNetworkFetcher.h"

@implementation iSuNetworkFetcher

//第一种方式：
- (void)startWithCompletionHander:(EOCNetworkFecherCompletionHandler)handler faileureHandler:(EOCNetworkFecherErrorHandler)failure{

    
    
    
}

//第二种方式:
- (void)iSuStartWithCompletionHandler:(iSuNetworkFecherCompletionHandler)completion{

    int a = 5;
    NSError * error;
    completion(a,error);
}


@end
