//
//  HMMessageViewController.h
//  HMRuntime
//
//  Created by humiao on 2019/7/4.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HMMessageViewController : UIViewController


/**
 1.
 类方法本质:类对象调用[NSObject class]
 id:谁发送消息
 SEL:发送什么消息
 ((NSObject *(*)(id, SEL))(void *)objc_msgSend)([NSObject class], @selector(alloc));
 xcode6之前,苹果运行使用objc_msgSend.而且有参数提示
 xcode6苹果不推荐我们使用runtime
 
 2.
 开发中使用场景:
 需要用到runtime,消息机制
 1.装逼
 2.不得不用runtime消息机制,可以帮我 调用私有方法.
 
 */

@end

NS_ASSUME_NONNULL_END
