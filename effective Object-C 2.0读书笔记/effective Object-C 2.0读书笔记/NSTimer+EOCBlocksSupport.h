//
//  NSTimer+EOCBlocksSupport.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/11.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (EOCBlocksSupport)

+ (NSTimer *)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void(^)())block repeats:(BOOL)repeats;

@end
