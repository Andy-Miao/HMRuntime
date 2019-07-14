//
//  HMRobot.m
//  HMRuntime
//
//  Created by humiao on 2019/7/14.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMRobot.h"
#import <objc/message.h>

@implementation HMRobot

//--------------------------- Runtime(动态添加方法) ------------------------------//
//

// 没有返回值，也没有参数
// void,(id，SEL)
void execuAction (id self, SEL _cmd, NSNumber *meter) {
    NSLog(@"运动了%@米", meter);
}

// 任何方法默认都有两个隐式参数,self,_cmd
// 什么时候调用:只要一个对象调用了一个未实现的方法就会调用这个方法,进行处理
// 作用:动态添加方法,处理未实现
+ (BOOL)resolveInstanceMethod:(SEL)sel {
     // [NSStringFromSelector(sel) isEqualToString:@"run"];
    if (sel == NSSelectorFromString(@"run:")) {
        // class: 给哪个类添加方法
        // SEL: 添加哪个方法
        // IMP: 方法实现 => 函数 => 函数入口 => 函数名
        // type: 方法类型
        class_addMethod(self, sel, (IMP)execuAction, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:sel];
}

- (void)rebotRun {
    NSLog(@"机器人在运动");
}


@end
