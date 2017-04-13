//
//  EOCPerson.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/1.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject


@property (nonatomic,copy) NSString * iSuName;
@property (nonatomic, copy) NSString * fitstName ;
@property (nonatomic, strong) NSString * lastName ;

- (NSString*)fullName;
- (void)setFullName:(NSString *)fullName;
@end
