//
//  FortyNine.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "FortyNine.h"

const void * EOCRetainCallback(CFAllocatorRef allocator, const void * value){
    return CFRetain(value);
}

void EOCReleaseCallback(CFAllocatorRef allocator,const void * value){
    CFRelease(value);
}

@implementation FortyNine

- (void)Arraytest{

    NSArray * anNSArray = @[@1,@2,@3,@4,@5];
    // __bridge本意是：ARC仍然具备这个OC对象的所有权。而__bridge_retained则与之相反，意味着ARC交出对象的所有权。
    // NSArray --> CFArrayRef   用__bridge
    // CFArrayRef --> NSArray   用 __bridge_transfer
    CFArrayRef aCFArray = (__bridge CFArrayRef)anNSArray;
    NSLog(@"size of array = %li",CFArrayGetCount(aCFArray));
    
    
    //对比一下反向的dic 和array 生成语言定义。  这个都是mutable的 正常的固定数值更加长。
    
    
//    CFDictionaryCreateMutable(<#CFAllocatorRef allocator#>, <#CFIndex capacity#>, <#const CFDictionaryKeyCallBacks *keyCallBacks#>, <#const CFDictionaryValueCallBacks *valueCallBacks#>)
//
//    CFArrayRef cf =CFArrayCreateMutable(<#CFAllocatorRef allocator#>, <#CFIndex capacity#>, <#const CFArrayCallBacks *callBacks#>)
    
//    CFArrayCreate(<#CFAllocatorRef allocator#>, <#const void **values#>, <#CFIndex numValues#>, <#const CFArrayCallBacks *callBacks#>)
    
}

- (void)Dictest{

    //创建一个可变字典的时候 我们通常对新加入的数据，"拷贝“健并”保留“值,但是如果健值不实现Copy协议 那么就有可能报错“copyWithZone”的错，这个时候我们可以通过底层来创建一个字典改变他的内存管理语义。
    CFDictionaryKeyCallBacks keyCallbacks ={
    0,
    EOCRetainCallback,
    EOCReleaseCallback,
    NULL,
    CFEqual,
    CFHash
    };
    
    CFDictionaryValueCallBacks valueCallbacks ={
        0,
        EOCRetainCallback,
        EOCReleaseCallback,
        NULL,
        CFEqual,
    };
    
    CFMutableDictionaryRef aCFDictionary = CFDictionaryCreateMutable(NULL, 0, &keyCallbacks, &valueCallbacks);
    
    NSMutableDictionary * anNSDictionary = (__bridge_transfer NSMutableDictionary *)aCFDictionary;
}
@end
