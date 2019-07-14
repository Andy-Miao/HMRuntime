//
//  HMAddMethodViewController.h
//  HMRuntime
//
//  Created by humiao on 2019/7/14.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMBasisViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HMAddMethodViewController : HMBasisViewController

/**
 3.Runtime(动态添加方法)-
 OC都是懒加载机制,只要一个方法实现了,就会马上添加到方法列表中.
 
 美团有个面试题?
 考察的就是，Runtime动态添加方法.
 有没有使用过performSelector,什么时候使用?动态添加方法的时候使用过?怎么动态添加方法?用runtime?为什么要动态添加方法?
 */

@end

NS_ASSUME_NONNULL_END
