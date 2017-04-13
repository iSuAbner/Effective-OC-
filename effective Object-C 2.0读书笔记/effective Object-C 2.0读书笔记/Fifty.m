//
//  Fifty.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "Fifty.h"

@interface Fifty()

@end

@implementation Fifty{

    NSCache * _cache;
}

- (instancetype)init{

    if (self = [super init]) {
        _cache =[NSCache new];
        //每个峰值
        _cache.countLimit = 100;
        //总类峰值
        _cache.totalCostLimit = 5 * 1024 * 1024;
    }
    return self;
}

- (void)downloadDataForUrl:(NSURL*)url{
//    NSData * cachedData =[_cache objectForKey:url];
//    if (cachedData) {
//         //使用内存.
//    }else{
//       
//        Fifty * fetcher = [[Fifty alloc]initWithURL:url];
//        [fetcher startWithCompletionHandler:^(NSData *data) {
//            [_cache setObject:data forKey:url];
//        }];
//    }
    
    NSPurgeableData * cachedData = [_cache objectForKey:url];
    if (cachedData) {
        [cachedData beginContentAccess];
        //使用内存  [self userData:cachedData];
        [cachedData endContentAccess];
    }else{
    
        Fifty * fetcher =[[Fifty alloc]initWithURL:url];
        [fetcher startWithCompletionHandler:^(NSData *data) {
            NSPurgeableData * purgeableData =[NSPurgeableData dataWithData:data];
            [_cache setObject:purgeableData forKey:url];
            //这边就不需要在开启了 因为已经已经标记开启了。
            //使用内存  [self userData:cachedData];
            [purgeableData endContentAccess];
        }];
    }
}

- (void)startWithCompletionHandler:(EOCNetworkFecherCompletioHander)hander{

    NSData * data;
    hander(data);
}

@end
