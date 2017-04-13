//
//  JinTou.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/7.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "JinTou.h"

@implementation JinTou

- (void)test{

    NSDictionary * aDictionary = @{@"iSu":@"1",@"Abner":@"2",@"KoreaHappend":@"3"};
//    NSArray * keys = [aDictionary allKeys];
//    for (int i = 0; i < keys.count; i++) {
//        id key = keys[i];
//        id value = aDictionary[key];
//        NSLog(@"NSDictionary的%@对应的是%@",key,value);
//    }
    NSEnumerator * DicEn = [aDictionary keyEnumerator];
    id key;
    while ((key = [DicEn nextObject])!= nil) {
        id value = aDictionary[key];
        //NSLog(@"NSDictionary的%@对应的是%@",key,value);
    }
    
    for (id key in aDictionary) {
        id value  = aDictionary[key];
        //NSLog(@"ForinNSDictionary的%@对应的是%@",key,value);
    }
    
    
    
    
    
    NSSet * aSet = [NSSet setWithObjects:@"iSu",@"Abner",@"iSuAbner", nil];
//    NSArray * objects =[aSet allObjects];
//    for (int i = 0;i < objects.count; i++) {
//        id objcect =objects[i];
//        NSLog(@"NSSet里面出来的东西:%@",objcect);
//    }
    NSEnumerator * SetEn = [aSet objectEnumerator];
    id Setobject;
    while ((Setobject = [SetEn nextObject]) != nil) {
        //NSLog(@"NSSet里面出来的东西:%@",Setobject);
    }
    
    
    
   // NSEnumerator  nextObject返回枚举里的下个对象。
   // 正向的：
    NSArray * anArray = @[@"iSu",@"Abner",@"iSuAbner"];
    NSEnumerator * enumerator = [anArray objectEnumerator];
    id iSuobject;
    while ((iSuobject = [enumerator nextObject]) != nil) {
        //NSLog(@"NSEnumerator保存的数据位%@",iSuobject);
    }
    
    // 反向的：
    NSEnumerator * reenumerator =[anArray reverseObjectEnumerator];
    id object;
    while ((object =[reenumerator nextObject]) != nil) {
        //NSLog(@"NSEnumerator反向保存的数据位%@",object);
    }
    
    
    //块遍历
    [anArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        if ([anArray[idx] isEqualToString:@"Abner"]) {
            *stop = YES;
        }else{
            NSLog(@"block遍历:%@",anArray[idx]);
        }

    }];
}

@end
