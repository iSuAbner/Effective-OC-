//
//  YeZhiShengPerson.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/16.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "YeZhiShengPerson.h"

@interface YeZhiShengPerson()

@property (nonatomic, copy , readwrite)NSString * firstName;
@property (nonatomic, copy , readwrite)NSString * lastName;

@end

@implementation YeZhiShengPerson{

    NSMutableSet * _internalFriends;
}

- (NSSet *)firends{

    return [_internalFriends copy];
    
    
    //这边如果没有返回NSSet（也就是没copy）而是直接返回NSMutableSet的时候 这个
    //(self.friends isKindOfClass:[NSMutableSet Class])? 这个句子成立吗?
}

- (void)addFirend:(YeZhiShengPerson *)person{

    [_internalFriends addObject:person];
}

- (void)removeFriend:(YeZhiShengPerson *)person{
    [_internalFriends removeObject:person];
}

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{

    if (self = [super init]) {
        _firstName = firstName;
        _lastName = lastName;
        _internalFriends = [NSMutableSet new];
    }
    return self;
}
@end


