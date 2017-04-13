//
//  AbnerPerson.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/15.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "AbnerPerson.h"

@implementation AbnerPerson

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName{

    if (self = [super init]) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    return  self;
}

- (NSString *)description{

    return [NSString stringWithFormat:@"<%@:%p , \"%@ %@\">",[self class],self,_firstName,_lastName];

}
@end
