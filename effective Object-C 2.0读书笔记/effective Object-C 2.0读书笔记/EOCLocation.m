//
//  EOCLocation.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/15.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCLocation.h"

@implementation EOCLocation

- (id)initWithTitle:(NSString *)title latitude:(float)latitude longitude:(float)longitude{

    if (self = [super init]) {
        _title = [title copy];
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

- (NSString *)description{

    return [NSString stringWithFormat:@"<%@: %p , %@>",[self class],self,@{@"title":_title,@"latitude":@(_latitude),@"longitude":@(_longitude)}];
    
}

@end
