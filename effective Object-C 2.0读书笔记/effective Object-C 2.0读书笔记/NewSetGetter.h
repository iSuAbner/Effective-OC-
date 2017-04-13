//
//  NewSetGetter.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/6.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewSetGetter : NSObject{
    
    dispatch_queue_t _iSuQueue;
}
@property (nonatomic,copy) NSString * someString;
- (void)queue;
@end
