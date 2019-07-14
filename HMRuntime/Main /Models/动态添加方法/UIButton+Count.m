//
//  UIButton+Count.m
//  HMRuntime
//
//  Created by humiao on 2019/7/14.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "UIButton+Count.h"
#import <objc/message.h>

// 在方法是额外添加功能
@implementation UIButton (Count)
+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Class selfClass = [self class];
        
        SEL oriSEL = @selector(sendAction:to:forEvent:);
        Method oriMethod = class_getInstanceMethod(selfClass, oriSEL);
        
        SEL cusSEL = @selector(mySendAction:to:forEvent:);
        Method cusMethod = class_getInstanceMethod(selfClass, cusSEL);
        
        BOOL addSucc = class_addMethod(selfClass, oriSEL, method_getImplementation(cusMethod), method_getTypeEncoding(cusMethod));
        if (addSucc) {
            class_replaceMethod(selfClass, cusSEL, method_getImplementation(oriMethod), method_getTypeEncoding(oriMethod));
        }
//        else {
//            method_exchangeImplementations(oriMethod, cusMethod);
//        }
        
    });
}

- (void)mySendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event {
    NSLog(@"方法添加成功");
    [self mySendAction:action to:target forEvent:event];
}
@end
