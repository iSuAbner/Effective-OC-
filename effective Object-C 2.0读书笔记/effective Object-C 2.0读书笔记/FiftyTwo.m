//
//  FiftyTwo.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/11.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "FiftyTwo.h"

@implementation FiftyTwo{
    NSTimer * _pollTimer;
}

- (instancetype)init{
    return [super init];
}

- (void)dealloc {
    [_pollTimer invalidate];
}

- (void)stopPolling{

    [_pollTimer invalidate];
    _pollTimer = nil;
}

- (void)startPolling{

    //因为target的对象是self 所以定时器是持有self的，而timer有是self的成员变量，所以就相互包邮
    _pollTimer =[NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(p_doPoll) userInfo:nil repeats:YES];
}

- (void)p_doPoll{

    //Poll the resource
    NSLog(@"五十二条定时器运行");
}


-(void)test{

//    [NSTimer scheduledTimerWithTimeInterval:<#(NSTimeInterval)#> target:<#(nonnull id)#> selector:<#(nonnull SEL)#> userInfo:<#(nullable id)#> repeats:<#(BOOL)#>]
    
//    NSTimer * time ;
//    [time invalidate];

}
@end
