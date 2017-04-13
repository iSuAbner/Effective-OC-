//
//  iSuNetworkFetcher.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/30.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

//第一种风格
typedef void (^EOCNetworkFecherCompletionHandler)(NSData * data);
typedef void (^EOCNetworkFecherErrorHandler)(NSError * error);

//第二种风格
typedef void (^iSuNetworkFecherCompletionHandler)(int data,NSError * error);

//某个时间
typedef void(^EOCNetworkFetcherProgressHandler)(float progress);
@class iSuNetworkFetcher;
@protocol iSuNetworkFecherDelegate <NSObject>
- (void)networkFecher:(iSuNetworkFetcher *)networkFetcher didFinishWithData:(NSData *)data;

@end

@interface iSuNetworkFetcher : NSObject

@property (nonatomic, weak) id <iSuNetworkFecherDelegate> delegate;
@property (nonatomic,copy) EOCNetworkFetcherProgressHandler progressHandler;

- (id)initWithURL:(NSURL *)url;
//第一种风格
- (void)startWithCompletionHander:(EOCNetworkFecherCompletionHandler)handler faileureHandler:(EOCNetworkFecherErrorHandler)failure;

//第二种风格
- (void)iSuStartWithCompletionHandler:(iSuNetworkFecherCompletionHandler)completion;

@end
