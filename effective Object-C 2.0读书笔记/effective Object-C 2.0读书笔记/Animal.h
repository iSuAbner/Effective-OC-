//
//  Animal.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/15.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject<NSCoding>

@property (nonatomic ,copy) NSString * name;
@property (nonatomic ,assign) unsigned int sex;
@property (nonatomic ,assign) unsigned int age;
@property (nonatomic ,copy) NSString * location;


@end
