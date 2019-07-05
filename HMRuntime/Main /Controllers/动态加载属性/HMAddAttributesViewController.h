//
//  HMAddAttributesViewController.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMBasisViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HMAddAttributesViewController : HMBasisViewController

/**
 *3.Runtime(动态添加属性)+
 应用场景：给系统的类添加属性的时候,可以使用runtime动态添加属性方法
 本质:动态添加属性,就是让某个属性与对象产生关联
 
 需求:让一个NSObject类 保存一个字符串
 runtime一般都是针对系统的类
 */

@end

NS_ASSUME_NONNULL_END
