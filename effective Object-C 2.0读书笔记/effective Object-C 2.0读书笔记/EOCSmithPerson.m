//
//  EOCSmithPerson.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/1.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "EOCSmithPerson.h"

@implementation EOCSmithPerson

@synthesize iSuName = _iSuName;

- (instancetype)initWithName:(NSString *)aName{

    self = [super init];
    if (self) {
        NSLog(@"self.name = aName");
        self.iSuName = aName;
    }
    return self;
}

- (void)wrestle{

    NSLog(@"i am %@ ,U cant see me",self.iSuName);
}

- (void)setISuName:(NSString *)iSuName{

    if (![iSuName hasSuffix:@"Cena"]) {
        [NSException raise:NSInvalidArgumentException format:@"last name must Cena"];
    }
    _iSuName = [iSuName copy];
}
@end
