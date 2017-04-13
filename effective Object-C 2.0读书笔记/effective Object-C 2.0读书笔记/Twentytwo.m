//
//  Twentytwo.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/4/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "Twentytwo.h"

@interface Twentytwo(){
    NSMutableSet * _friends;
}

@end

@implementation Twentytwo

- (id)copyWithZone:(NSZone *)zone{

    Twentytwo * copy = [[[self class] allocWithZone:zone] initWithFirstName:_firstName andLastName:_lastName];
    //copy -> _friends =[_friends mutableCopy];
    return copy;
}

//- (id)copyWithZone:(NSZone *)zone{
//
//    Twentytwo * cop =[[self class] allocWithZone:zone];
//    return cop;
//}



- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{

    if (self = [super init]) {
        _firstName = [firstName copy];
        _lastName =[lastName copy];
        _friends =[NSMutableSet new];
    }
    return self;
}

- (void)addFriend:(Twentytwo *)person{
    [_friends addObject:person];
}

- (void)removeFriend:(Twentytwo *)person{
    [_friends removeObject:person];
}


@end
