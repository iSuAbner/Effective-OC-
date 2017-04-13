//
//  EOCEmployee.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/2.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCEmployee.h"
#import "EOCEmployeeDeveloper.h"
#import "EOCEmployeeDesigner.h"
#import "EOCEmployeeFinance.h"

@implementation EOCEmployee

+ (EOCEmployee *)employeeWithType:(EOCEmployeeType)type{

    switch (type) {
        case  EOCEmployeeTypeDeveloper:
        return  [EOCEmployeeDeveloper new];
        break;
        
        case  EOCEmployeeTypeFinance:
        return  [EOCEmployeeFinance new];
        break;
        
        case  EOCEmployeeTypeDesigner:
        return  [EOCEmployeeDesigner new];
        break;
        
        default:
        break;
    }
}

- (void)doADaysWork{

    NSLog(@"做了一些事情");
}
@end
