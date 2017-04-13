//
//  SecondYearNetworkFetcher.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/31.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^iSuAbnerNetworkFetcherCompletionHandler)(NSData * data);

@interface SecondYearNetworkFetcher : NSObject

@property (nonatomic, strong, readonly) NSURL * url;
- (id)initWithURL:(NSURL *)url;
- (void)startWithCompletionHandler:(iSuAbnerNetworkFetcherCompletionHandler)completion;

@end
