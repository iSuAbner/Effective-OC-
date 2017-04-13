//
//  SecondYearNetworkFetcher.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/31.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "SecondYearNetworkFetcher.h"

@interface SecondYearNetworkFetcher()

@property (nonatomic, strong, readwrite) NSURL * url;
@property (nonatomic, copy) iSuAbnerNetworkFetcherCompletionHandler completionHandler;
@property (nonatomic, strong) NSData * downloadedData;
@end

@implementation SecondYearNetworkFetcher

- (id)initWithURL:(NSURL *)url{

    if (self = [super init]) {
        _url = url;
    }
    return self;
}

- (void)startWithCompletionHandler:(iSuAbnerNetworkFetcherCompletionHandler)completion{
  
    self.completionHandler = completion;

    //start the request
    //Request sets downloadedData property
    //When request in finished,p_requestCompleted is called.
}

- (void)p_requestCompleted{
    
    if (_completionHandler) {
        _completionHandler(_downloadedData);
    }
    //防止保留环
    self.completionHandler = nil;

}
@end
