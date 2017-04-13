//
//  EOCPerson.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/1.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson


- (NSString *)fullName{

    return [NSString stringWithFormat:@"%@ %@",self.fitstName,self.lastName];
}

- (void)setFullName:(NSString *)fullName{

    NSArray * components =[fullName componentsSeparatedByString:@" "];
    self.fitstName = [components objectAtIndex:0];
    self.lastName =[components objectAtIndex:1];
}


- (void)setLastName:(NSString *)lastName{

//    _lastName =[NSString stringWithFormat:@"appending %@",lastName];

}

- (instancetype)init{

    self =[super init];
    self.fitstName = @"jetsen";
    self.lastName = @"";
    self.iSuName = @"";
    return self;
}

- (void)setISuName:(NSString *)iSuName {

    NSLog(@"我为啥要走你的子类啊");

}

@end
