//
//  EOCAutoDictionary.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/7.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>

@interface EOCAutoDictionary()

@property (nonatomic, strong)NSMutableDictionary * backingStore;

@end
@implementation EOCAutoDictionary

@dynamic string,number,date,opaqueObject;

id autoDictionaryGetter(id self, SEL _cmd) {

    EOCAutoDictionary * typeSelf = (EOCAutoDictionary *)self;
    NSMutableDictionary * backingStore = typeSelf.backingStore;
    
    NSString * key = NSStringFromSelector(_cmd);
    
    return [backingStore objectForKey:key];

}


id autoDictionarySetter(id self, SEL _cmd, id value){

    EOCAutoDictionary * typeSelf =(EOCAutoDictionary *)self;
    NSMutableDictionary * backingStore = typeSelf.backingStore;
    
    NSString * selectorString = NSStringFromSelector(_cmd);
    NSMutableString * key = [selectorString mutableCopy];
    
    //Remove the ":" at the end
    [key deleteCharactersInRange:NSMakeRange(key.length - 1,1)];
    
    //Remove the "set" perfix
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    NSString * lowercaseFirstChar = [[key substringToIndex:1]  lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowercaseFirstChar];
    if (value) {
        [backingStore setObject:value forKey:key];
    }else{
        [backingStore removeObjectForKey:key];
    }
    return [backingStore objectForKey:key];
}

- (instancetype)init{

    if (self = [super init]) {
        _backingStore = [NSMutableDictionary new];
    }
    return self;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel{
    NSString * selectorString = NSStringFromSelector(sel);
    if ([selectorString hasPrefix:@"set"]) {
        
        class_addMethod(self,sel ,(IMP)autoDictionarySetter, "v@:@");
    }else{
        class_addMethod(self,sel ,(IMP)autoDictionaryGetter, "@@:");
    }
    return YES;
}

@end
