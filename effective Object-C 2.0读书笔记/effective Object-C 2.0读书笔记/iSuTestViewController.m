//
//  iSuTestViewController.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/3/30.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "iSuTestViewController.h"
#import "iSuNetworkFetcher.h"

@interface iSuTestViewController ()<iSuNetworkFecherDelegate>

@end

@implementation iSuTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self test];
}

- (void)test{

    NSURL * url = [[NSURL alloc] initWithString:@"www.iSuAbner.com"];
    iSuNetworkFetcher * fecher = [[iSuNetworkFetcher alloc] initWithURL:url];
    fecher.delegate =self;
    [fecher startWithCompletionHander:^(NSData *data) {
        
    } faileureHandler:^(NSError *error) {
        
    }];
//第二种风格
//   [fecher iSuStartWithCompletionHandler:^(NSData *data, NSError *error) {
//       
//   }];
}

- (void)networkFecher:(iSuNetworkFetcher *)networkFetcher didFinishWithData:(NSData *)data{

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
