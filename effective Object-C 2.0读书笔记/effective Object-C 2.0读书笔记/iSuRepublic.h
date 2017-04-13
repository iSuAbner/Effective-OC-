//
//  iSuRepublic.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/2/27.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,iSuEnum){

    iSuTestOne = 1 << 0,
    iSuTestTwo = 1 << 1,
    iSuTestThree = 1 << 2,
    iSuTestFour = 1 << 3
};




extern NSString * const iSuRepublicName ;

@interface iSuRepublic : NSObject

@end
