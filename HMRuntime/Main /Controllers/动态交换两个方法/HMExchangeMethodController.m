//
//  HMExchangeMethodController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMExchangeMethodController.h"
#import "UIImage+Exchange.h"

#import <objc/message.h>
#import "HMPerson.h"
#import "HMRobot.h"

@interface HMExchangeMethodController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageV;

@property (nonatomic, strong) HMPerson *person;
@property (nonatomic, strong) HMRobot *robot;
@end

@implementation HMExchangeMethodController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self exchangeMethods];
    
    [self interceptAndExchangeMethods];
}
//--------------------------- Runtime(交换方法) ------------------------------//
- (void)exchangeMethods {
     // imageNamed => ln_imageNamed 交互这两个方法实现
    
    self.imageV.image = [UIImage hm_imageNamed:@"https:github.comaccount"];
}
//--------------------------- Runtime(拦截并交换方法) ------------------------------//
- (void)interceptAndExchangeMethods {
    //这里也可以使用 [self.person class],不过要先初始化
    Method m1 = class_getInstanceMethod([HMPerson class], @selector(personRun));
    Method m2 = class_getInstanceMethod([HMRobot class], @selector(rebotRun));
    
    method_exchangeImplementations(m1, m2);
    
    [objc_msgSend(objc_getClass("HMPerson"), sel_registerName("alloc")) personRun];
    [objc_msgSend([HMRobot class], @selector(alloc)) rebotRun];
}

@end
