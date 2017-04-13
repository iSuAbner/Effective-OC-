//
//  EOCClass.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/31.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCClass.h"
#import "SecondYearNetworkFetcher.h"

@implementation EOCClass{
    SecondYearNetworkFetcher * _networkFetcher;
    NSData * _fetchedData;
}

// 互相保留产生保留环
- (void)downloadData{

    NSURL * url = [[NSURL alloc] initWithString:@"www.baidu.com"];
    _networkFetcher = [[SecondYearNetworkFetcher alloc] initWithURL:url];
    [_networkFetcher startWithCompletionHandler:^(NSData *data) {
        NSLog(@"");
        /*
         只要适合时间的时候清理掉环中的某个引用就可以清楚这个保留环。
         在这个例子中，只有completion handler运行过后，方能接触保留环。但是如果completion handler一直不运行的话，保留环就不能被打破，于是内存就会泄露。
         */
        
        //handle块保留了创建网络数据获取其的EOCClass通过他的_fetchedData属性。
        _fetchedData = data;
    }];
}

// 自身保有自身 产生保留环
- (void)setcondDownload{

    //handler块通过获取器对象来引用其中的URL。于是块就要保留获取器。而获取器又反过来精油comletionHandler属性保留这个块。
    //解决办法就是  我们知道获取器对象之所以要把completionhandler块保存在属性里面，其唯一目的是想稍后使用这个块。可是，获取器一旦运行过completion handler之后，就没有必要再保留他了，所以只需将p_requestComoleted方法按如下方式修改即可。
    
    NSURL * url =[[NSURL alloc]initWithString:@"www.baidu.com"];
    SecondYearNetworkFetcher * networkFetcher =[[SecondYearNetworkFetcher alloc] initWithURL:url];
    [networkFetcher startWithCompletionHandler:^(NSData *data) {
        NSLog(@"%@",networkFetcher.url);
        _fetchedData = data;
    }];
}

@end
