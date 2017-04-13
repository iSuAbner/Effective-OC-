//
//  ViewController.m
//  effective Object-C 2.0读书笔记
//
//  Created by 香菇年的程序员 on 2017/2/24.
//  Copyright © 2017年 香菇年的程序员. All rights reserved.
//

#import "ViewController.h"
#import "iSuRepublic.h"
#import "EOCPerson.h"
#import "EOCSmithPerson.h"
#import <objc/runtime.h>
#import "EOCAutoDictionary.h"
#import "NSString+EOCMyAdditions.h"
#import "AbnerPerson.h"
#import "EOCLocation.h"
#import "iSuNetworkFetcher.h"
#import "DiErQianNianTest.h"
#import "NewSetGetter.h"
#import "iSuTestAbner.h"
#import "JinTou.h"
#import "TwentyTwoTest.h"
#import "Twentytwo.h"
#import "FiftyOneTest.h"
#import "FiftyOne.h"
#import <objc/objc-runtime.h>
#import "Fourteen.h"

//#import "iSuPerson.h"

//static const NSString * iSuRepublicName = @"变换成新的RepublicName";
//#define iSuPersonWhat @"变成了新的吗"
//static const NSString * iSuPersonName = @"变换成新的iSuPersonName";
@interface ViewController ()<UIAlertViewDelegate>

@property (nonatomic, copy) NSString * FirstName ;
@property (nonatomic, weak) NSString * SecondName;

@end

@implementation ViewController

static void * EOCMyAlertViewKey = "EOCMyAlertViewKey";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     
              第一条 了解Objective-C 语言的起源
     
    */
    
    NSString * someString = @"The string";
    NSString * anotherString = @"The string";
    //如果数值是一样的， 那么就会指向同一个位置 不管anotherString = someString 还是 "The string" 都是一样的
    //NSLog(@"%p",&someString);
    //NSLog(@"%p",&anotherString);
    //NSLog(@"%p",someString);         //这样的就是指向的位置是一样的
    //NSLog(@"%p",anotherString);     //指向的实例位置是一样的
    
    //指针在stack的位置是不同的但是指向的TheString对象是一致的。
    //8个字节存储指针。
    
    
    /*
             第四条 多用类型常量，少用#define预处理指令
     */
    
    //NSLog(@"%@",iSuRepublicName);
    //NSLog(@"%@",iSuPersonName);
    //NSLog(@"%@",iSuPersonWhat);
    
    /*
     
         第五条 枚举
     
     */
    iSuEnum en = 1;
    if (en == iSuTestOne) {
        //NSLog(@"第一个");
    }else if(en == iSuTestTwo){
        //NSLog(@"第二个");
    }else if(en == iSuTestThree){
        //NSLog(@"第三个");
    }else if(en == iSuTestFour){
        //NSLog(@"第四个");
    }
    
    /*
     
        第六条 属性
     
    */
//    self.FirstName = @"叶之声";
//    self.SecondName = self.FirstName;
//    self.FirstName = @"你该不该了";
//   // [self.FirstName dealloc];
//    NSLog(@"%@",self.SecondName);
//    NSLog(@"%@",self.FirstName);
    
    /*
     
       第七条：在对象内部尽量直接访问实例变量
    
    */

    //嗨呀，好气啊，我思想跑的太远了，我以为是在子类重写父类属性会影响父类的运行呢，并不是啊只是子类运行的时候如果发现父类的init方法中使用点语法而子类中正好重写了这个方法，那么就会走子类的方法，子类如果有限制条件语句的时候会导致条件在不清楚的情况下意外不能通过。而如果直接是属性的话就不会走set方法直接就跳过子类的判断环节了。例子请看EOCPerson.demo
//    EOCSmithPerson * sim =[[EOCSmithPerson alloc]initWithName:@"John Cena"];
//    [sim wrestle];
    
   // 不会影响父类的运行。
   // EOCPerson * Per =[[EOCPerson alloc]init];
    
    /*
     
     第八条：理解“对象等同性”这个概念
     
     */
    
//    NSString * foo = @"Badger 123";
//    NSString * bar = [NSString stringWithFormat:@"Badger %i",123];
//    BOOL equalA =(foo == bar);
//    BOOL equalB = [foo isEqualToString:bar];
//    BOOL equalC = [foo isEqual:bar];
//    
//    if (equalA == YES) {
//        NSLog(@"==号也是好使的");
//    }
    
    //指针相同  if(self == object) return YES;
    //比较两对象所属的类 if[self class] != [object class]
    
    //NSSet在查找某一特定的元素的时候是根据hash算法直接找到此元素的位置，效率高，最大的特点是集合中不允许出现重复对象
    
    NSMutableSet * set = [NSMutableSet new];
    NSMutableArray * arrayA =[@[@1,@2] mutableCopy];
    [set addObject:arrayA];
    NSLog(@"%@",set);
    
    NSMutableArray * arrayB =[@[@1,@2] mutableCopy];
    [set addObject:arrayB];
    NSLog(@"%@",set);
    
    NSMutableArray * arrayC =[@[@1] mutableCopy];
    [set addObject:arrayC];
    NSLog(@"%@",set);
    
    [arrayC addObject:@2];
    NSLog(@"%@",set);
    
    
    /*
     
       第九条 ： 用“类族模式” 隐藏实现细节
     
     */
    
    //基类实现一个“类方法”，该方法根据待创建的雇员类别分配好对应的雇员类实例，这种“工厂模式”是创建类族的办法之一。
    NSArray * arrr =@[@"1",@"2",@"3"];
    NSMutableArray * iSunum = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
    JinTou * jin = [[JinTou alloc]init];
    if ([jin isKindOfClass:[NSObject class]]) {
        NSLog(@"kind");
    }
    if ([iSunum isMemberOfClass:[NSMutableArray class]]) {
        
        NSLog(@"member");
    }
    
    
    /*
        第十条：在既有类中使用关联对象存放自定义数据
     */
    
    
//    void objc_setAssociatedObject(id object, void * key,id value,objc_AssociationPolicy policy)
    //[self askUserAQuestion];
    
    
    /*
     
       第十二条：消息转发
     
     */
//    EOCAutoDictionary * dict = [EOCAutoDictionary new];
//    dict.date = [NSDate dateWithTimeIntervalSince1970:475372800];
//    NSLog(@"dict.date = %@",dict.date);
    
    /*
     第十三条：用方法调配技术调试黑盒方法
     */
    //类的方法列表会把选择子的名称映射到相关的方法实现上。使得“冬天消息派发系统”能够据此找到应该调用的方法。这些方法均以函数指针的形式来表示，这种指针叫做IMP,其原型如下
    //  id (*IMP)(id,SEL,...)
    
    NSString * string = @"This is tHe sTring";

    NSString * lowercaseString = [string lowercaseString];
    //NSLog(@"lowercaseString ==> %@",lowercaseString);

    /*
     
     第十四条
     
     */
    Fourteen * fourteen = [[Fourteen alloc]init];
    [fourteen test];
    
    /*
     第十六条： 全能方法
     */
//    @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:@"Must use initWithWidth:andHeight:andHeight: instead" userInfo:nil];
    /*
     第十七条：descript
     */
    AbnerPerson * person = [[AbnerPerson alloc]initWithFirstName:@"Bob" lastName:@"smith"];
    //NSLog(@"person == %@",person);
    
    EOCLocation * location = [[EOCLocation alloc]initWithTitle:@"eaht" latitude:51.00 longitude:0.00];
    //NSLog(@"location ==  %@",location);
    
    
    
    /*
     
     第三十七条：理解“块”这一概念
     
     */
    __block int additional = 5;
    int (^addBlock)(int a, int b) = ^(int a, int b){
        return a + b + additional;
    };
    int add = addBlock(2,5);
    //NSLog(@"增加后得到的数值：%d",add);
    
    NSArray * array = @[@5,@4,@3,@2,@1];
    __block NSInteger iSucount = 0;
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([(NSNumber *)obj compare:@2] == NSOrderedAscending) {
            iSucount ++;
        }
    }];
    
    //第三十九条
    iSuNetworkFetcher * net =[[iSuNetworkFetcher alloc]init];
    [net.delegate networkFecher:net didFinishWithData:[NSData data]];
 
    [net iSuStartWithCompletionHandler:^(int data, NSError *error) {
       
        //NSLog(@"传过来的整数：%d",data);
    }];
    //第四十二条
    DiErQianNianTest * TestW =[[DiErQianNianTest alloc]init];
    //私有方法不能调用
    [TestW performSelector:@selector(iSuTest)];
    [TestW performSelector:@selector(iSuTest) withObject:@1];
    //调用performSelector的返回值毕竟是id类型.
    
    //GCD延迟方法运行的时间
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC));
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [TestW iSuTest];
    });
    //第四十三条
    NSOperation * iSu1 =[[NSOperation alloc]init];
    NSOperation * iSu2 =[[NSOperation alloc]init];
    [iSu1 addDependency:iSu2];
    
//    这样的肯定会蹦啊
//    NSString * str = @"iSuAbner" ;
//    [str setValue:@"test" forKey:@"iSu"];
//    NSLog(@"%@",[str valueForKeyPath:@"iSu"]);
   NSBlockOperation * block1 =  [NSBlockOperation blockOperationWithBlock:^{
       // NSLog(@"调用子类方法的block");
    }];
    [block1 setCompletionBlock:^{
       // NSLog(@"结束调用");
    }] ;
    [block1 start];
    
    NSBlockOperation * op1 =[[NSBlockOperation alloc]init];
    [op1 addExecutionBlock:^{
        
    }];
    
    [op1 addExecutionBlock:^{
        
    }];
    
    //这样方法加载上去的线程 只会是两个 而不是三个或者更多？ 为啥啊？
    
    //第四十四条
    iSuTestAbner * Abner = [[iSuTestAbner alloc]init];
    [Abner xianhoushunxu];
    
    
    //第四十六条
    dispatch_queue_t queueA =dispatch_queue_create("com.effective.queueA", NULL);
     dispatch_queue_t queueB =dispatch_queue_create("com.effective.queueB", NULL);
    
    dispatch_sync(queueA, ^{
 //       NSLog(@"第一个A");
//        dispatch_sync(queueB, ^{
//            NSLog(@"第二个B");
            dispatch_async(queueA, ^{
 //               NSLog(@"第三个C");
            });
//        dispatch_apply(1, queueA, ^(size_t) {
//            
//        });
//        });
    });
    
    NewSetGetter * what =[[NewSetGetter alloc]init];
    [what queue];
    what.someString = @"iSu";
    //NSLog(@"%@",what.someString);
    
   //dispathc_specific data
    dispatch_queue_t  queueC = dispatch_queue_create("com.effectiveobjectivec.queueC", NULL);
    dispatch_queue_t  queueD =dispatch_queue_create("com.effectiveobjectivec.queueD", NULL);
    
    dispatch_set_target_queue(queueD, queueC);
    
    static int kQueueSpecific;
    CFStringRef queueSpecificValue = CFSTR("queueC");
    dispatch_queue_set_specific(queueC, &kQueueSpecific, (void *)queueSpecificValue, (dispatch_function_t)CFRelease);
    
    dispatch_sync(queueD, ^{
        dispatch_block_t block = ^{
          //  NSLog(@"No deadlock!");
        };
       // NSLog(@"QueueD miss ");
        CFStringRef retrievalue = dispatch_get_specific(&kQueueSpecific);
        
        if (retrievalue) {
            block();
        }else{
            dispatch_sync(queueC, block);
        }
    });
    
    /*
        第四十八条：
     */
    JinTou * jinn =[[JinTou alloc]init];
    [jinn test];
    
    
    /*
     
        第二十二条
     */
    Twentytwo * test1 =[[Twentytwo alloc]initWithFirstName:@"1" andLastName:@"iSu"];
    Twentytwo * test2 =[[Twentytwo alloc]initWithFirstName:@"2" andLastName:@"Abner"];
    [test1 addFriend:test2];
    Twentytwo * test3 =[test1 copy];
    //那么这个时候我们的test3 也会和test2成为朋友 这就是为什么要更新成员变量_friends的原因。
//    test -> _str =[NSString stringWithFormat:@"what"];
    
    /*
     
       第五十一条
     */
    FiftyOneTest * fiftyone =[[FiftyOneTest alloc]init];
    
    
    
}
- (void)askUserAQuestion{

    UIAlertView * alert =[[UIAlertView alloc]initWithTitle:@"Question" message:@"What do you want to do?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Continue", nil];
    
    void(^block)(NSInteger) = ^(NSInteger buttonIndex){
        if (buttonIndex == 0){
            [self doCancle];
        }else{
            [self doContinue];
        }
    
    };
    objc_setAssociatedObject(alert, EOCMyAlertViewKey, block, OBJC_ASSOCIATION_COPY);
    [alert show];
}

//UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    void (^block)(NSInteger)= objc_getAssociatedObject(alertView, EOCMyAlertViewKey);
    block(buttonIndex);

}

- (void)doCancle{

   // NSLog(@"结束");
}

- (void)doContinue{
  //  NSLog(@"继续");
}

- (NSUInteger)hash{

    return 1227;
}



@end
