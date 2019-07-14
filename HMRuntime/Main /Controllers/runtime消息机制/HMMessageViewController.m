//
//  HMMessageViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/4.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMMessageViewController.h"
#import <objc/message.h>
#import "HMPerson.h"

@interface HMMessageViewController ()

@end

@implementation HMMessageViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self runtimeMessage];
    
//    [self runtimeMessageRun];
}

- (void)runtimeMessage {
    /**
     id:谁发送消息; SEL:发送什么消息;
     objc_msgSend(id self, SEL op, ...)
     
     // 用最底层写
     objc_getClass(const char *name) 获取当前类
     sel_registerName(const char *str) 注册个方法编号
     让HMPerson这个类对象发送了一个alloc消息，返回一个分配好的内存对象给你;再发送一个消息初始化.
     */
    
     //id objc = [NSObject alloc];
    HMPerson *person = objc_msgSend(objc_getClass("HMPerson"), sel_registerName("alloc"));
     //objc = [objc init];
    ((void (*)(id, SEL))objc_msgSend)(person, @selector(eat));
    
    void (*hm_msgsend)(id, SEL, int) = (void (*)(id, SEL, int))objc_msgSend;
    hm_msgsend(person, @selector(run:),100);
    
}

//    方法二：
- (void)runtimeMessageRun {
    
     // id objc = [HMPerson alloc];
    id objc = objc_msgSend([NSObject class],@selector(alloc));
    
    // objc = [objc init];
    objc = objc_msgSend(objc, @selector(init));
}

@end
