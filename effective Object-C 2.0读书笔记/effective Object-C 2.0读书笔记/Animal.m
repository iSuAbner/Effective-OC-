//
//  Animal.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/15.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "Animal.h"

#define kA_name     @"name"
#define kA_sex      @"sex"
#define kA_age      @"age"
#define kA_location @"location"

@implementation Animal

- (instancetype)initWithCoder:(NSCoder *)aDecoder{

    self =[super init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:kA_name];
        self.sex  = [aDecoder decodeInt32ForKey:kA_sex];
        self.age  = [aDecoder decodeInt32ForKey:kA_age];
        self.location = [aDecoder decodeObjectForKey:kA_location];
        
    }
    return self;
}


- (void)encodeWithCoder:(NSCoder *)aCoder{

    [aCoder encodeObject:_name forKey:kA_name];

}

@end
