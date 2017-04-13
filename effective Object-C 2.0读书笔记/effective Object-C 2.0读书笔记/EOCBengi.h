//
//  EOCBengi.h
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/22.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCBengi : NSObject
@property (nonatomic, copy, readonly) NSString * firstName;
@property (nonatomic, copy, readonly) NSString * lastName;
@property (nonatomic, strong, readonly) NSArray * friends;

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
@end

@interface EOCBengi(Friendship)

- (void)addFriend:(EOCBengi *)person;
- (void)removeFirend:(EOCBengi *)person;
- (BOOL)isFriendWith:(EOCBengi *)person;
@end

@interface EOCBengi(Work)

- (void)performDaysWork;
- (void)takeVacationFromWork;
@end

@interface EOCBengi(Play)

- (void)goToTheCinema;
- (void)goToSportsGame;
@end
