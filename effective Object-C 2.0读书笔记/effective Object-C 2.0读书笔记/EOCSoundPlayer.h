//
//  EOCSoundPlayer.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/10.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCSoundPlayer;

@protocol EOCSoundPlayerDelegate <NSObject>

- (void)soundPlayerDidFinish:(EOCSoundPlayer *)player;

@end

@interface EOCSoundPlayer : NSObject

@property (nonatomic ,weak) id <EOCSoundPlayerDelegate>delegate;
- (id)initWithURL:(NSURL *)url;
- (void)playSound;

@end
