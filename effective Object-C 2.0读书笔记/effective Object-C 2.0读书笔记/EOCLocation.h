//
//  EOCLocation.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/15.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCLocation : NSObject

@property (nonatomic,copy) NSString * title;
@property (nonatomic,assign) float  latitude;
@property (nonatomic,assign) float  longitude;

- (id)initWithTitle:(NSString *)title latitude:(float)latitude longitude:(float)longitude;

@end
