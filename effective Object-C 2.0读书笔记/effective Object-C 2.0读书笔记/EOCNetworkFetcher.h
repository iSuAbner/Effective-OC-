//
//  EOCNetworkFetcher.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/21.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>
@class EOCNetworkFetcher;

struct data {
    unsigned int fieldA : 8;
    unsigned int fieldB : 4;
    unsigned int fieldC : 2;
    unsigned int filedD : 1;
};

@protocol EOCNetworkFetcherDelegate

@optional
- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didReceiveData:(NSData *)data;
- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didFailWithError:(NSError *)error;
- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didUpdateProgressTo:(float)progress;

@end

@interface EOCNetworkFetcher : NSObject

@property (nonatomic,weak)id<EOCNetworkFetcherDelegate> delegate;

@end
