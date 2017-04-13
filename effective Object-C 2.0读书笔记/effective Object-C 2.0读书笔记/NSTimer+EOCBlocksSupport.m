//
//  NSTimer+EOCBlocksSupport.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/11.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "NSTimer+EOCBlocksSupport.h"

@implementation NSTimer (EOCBlocksSupport)


+ (NSTimer *)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval block:(void (^)())block repeats:(BOOL)repeats{

    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(eoc_blockInvoke:) userInfo:[block copy] repeats:repeats];

}

+ (void)eoc_blockInvoke:(NSTimer *)timer{

    //通过userInfo传递block给这个@selector
    void(^block)() = timer.userInfo;
    if (block) {
        block();
    }

}
@end
