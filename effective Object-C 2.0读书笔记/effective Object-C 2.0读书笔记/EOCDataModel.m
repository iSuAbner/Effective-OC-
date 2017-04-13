//
//  EOCDataModel.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/21.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCDataModel.h"
#import "EOCNetworkFetcher.h"

@interface EOCDataModel()<EOCNetworkFetcherDelegate>
@end
/*
    委托模式 (delegate pattern) 数据源模(Data Source Pattern)
 
 委托模式： 因为对象把应该对某个行为的责任委托给了另一个类。
 比如 TableView的delegate 就是让对象拥有对TableView相应行为的责任。
 也就是消息从类流向了收委托者(delegate)
 
 数据源模式：信息数据流向了类(Class) 就像TableView的DataSource，是代理对象实现方法然后给TableView数据让他展示成什么样子~ 
 
 
 */

@implementation EOCDataModel

+ (void)load{

    EOCNetworkFetcher * eco =[[EOCNetworkFetcher alloc]init];
    EOCDataModel * model =[[EOCDataModel alloc]init];
    eco.delegate = model;
    NSData * data ;
    if ([model respondsToSelector:@selector(networkFetcher:didReceiveData:)]) {
        [model networkFetcher:eco didReceiveData:data];
    }
    


}

- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didFailWithError:(NSError *)error{

}

- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didReceiveData:(NSData *)data{

}

@end
