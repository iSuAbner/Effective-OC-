//
//  iSuTestAbner.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/1.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "iSuTestAbner.h"

@implementation iSuTestAbner

- (void)iSuTest{
    dispatch_group_t g = dispatch_group_create();
    //建立一个调度组
    dispatch_group_async(g, dispatch_get_main_queue(), ^{
        
    });
    //能够使分组里正要执行的任务数递增
    dispatch_group_enter(g);
    //能够使分组里正要执行的任务数递减
    dispatch_group_leave(g);
    dispatch_group_wait(g, dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)));
    
    NSArray * collection;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_group_t dispatchGroup = dispatch_group_create();
    for (id object in collection) {
        dispatch_group_async(dispatchGroup, queue, ^{
        //  每一个都做一件事情
        // [object  getone];
        });
    }
    dispatch_group_wait(dispatchGroup, DISPATCH_TIME_FOREVER);
    NSLog(@"完事了");
}

//两个并行 顺序
- (void)xianhoushunxu{
    
    NSArray * lowPriorityObjects;
    NSArray * highPriorityObjects;
    dispatch_group_t dispatchGroup = dispatch_group_create();

    //并行队列  0 0 0 0 0 0 0 0 0 0
    dispatch_queue_t lowPriorityQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_queue_t hightPriorityQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
 //   for (id object in lowPriorityObjects) {
        dispatch_group_async(dispatchGroup,lowPriorityQueue, ^{
            NSLog(@"第一个程序");
        });
 //   }
//  for (id object in highPriorityObjects) {
        dispatch_group_async(dispatchGroup, hightPriorityQueue, ^{
            NSLog(@"第二个程序");
        });
 //   }
    
    dispatch_queue_t notifyQueue = dispatch_get_main_queue();
    dispatch_group_notify(dispatchGroup, notifyQueue, ^{
        NSLog(@"等上面的程序结束之后就继续进行");
    });
}

//一个串行队列 顺序
- (void)Abner{

    NSArray * collection;
    //串行队列 NULL NULL NULL NULL NULLNULLNULL
    dispatch_queue_t queue =dispatch_queue_create("com.effec.queue", NULL);
    for (id object in collection) {
        dispatch_async(queue, ^{
            NSLog(@"串行队列第一个");
        });
    }
    
    dispatch_async(queue, ^{
        NSLog(@"串行队列第二个");
    });
    
    
//    dispatch_apply(10, queue, ^(size_t) {
//        //do task
//    });
//    dispatch_apply(10, queue, ^(size_t) {
//        
//    });
}



@end
