//
//  EOCSoundPlayer.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCSoundPlayer.h"
#import <AudioToolbox/AudioToolbox.h>

void completion(SystemSoundID ssID,void * clientData){

    EOCSoundPlayer * player =(__bridge  EOCSoundPlayer *)clientData;

    

}

@implementation EOCSoundPlayer

@end
