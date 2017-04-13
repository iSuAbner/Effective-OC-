//
//  NewSetGetter.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/6.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "NewSetGetter.h"



@implementation NewSetGetter

@synthesize someString = _someString;
//@dynamic someString;


- (void)queue{
     _iSuQueue = dispatch_queue_create("com.Jetsen.iSu", NULL);
    //搞了半天告诉我一个可能死锁
    //EXC_BAD_INSTRUCTION 是死锁的意思.
    //然后这个死锁啊   我看哈  就是说单个一个人 要做一个任务 ，然后这个任务的任务是巴拉拉巴拉的任务，所以这个人想要继续做的话就要先把这个巴拉巴拉的任务做完，然而这个巴拉巴拉德任务又是一个加到了同步队列里面的任务。因为这个任务列表是不是一个栈类型的(LIFO)而是一个先进去先出来的(FIFO)的队列所以，那么这个人想要完成所有任务就必须要完成外表的队列任务，然后再完成巴拉巴拉的内部队列任务。所以任务停在第一个外表任务，而内部巴拉巴拉任务也需要执行，因为这个人已经被第一个任务给拖住了，所以不可能跑去干第二个事情，第二个任务完不成导致第一个任务也返回完成不了。
    
}

- (NSString *)someString{
    
    __block NSString * localSomeString;
    
    dispatch_sync(_iSuQueue, ^{
       
        localSomeString = _someString; //这个方法会不会调用set方法
        //并不会调用set方法
    });
    return localSomeString;
}

- (void)setSomeString:(NSString *)someString{

    dispatch_sync(_iSuQueue, ^{
        _someString = someString;
        
    });
}

@end
