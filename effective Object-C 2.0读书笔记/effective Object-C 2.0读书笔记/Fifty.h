//
//  Fifty.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

//Network fetcher class
typedef void (^EOCNetworkFecherCompletioHander)(NSData * data);

@interface Fifty : NSObject

- (id)initWithURL:(NSURL *)url;
- (void)startWithCompletionHandler:(EOCNetworkFecherCompletioHander)hander;

@end
