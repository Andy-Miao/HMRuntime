//
//  NSObject+Property.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Property)
// @property分类:只会生成get,set方法声明,不会生成实现,也不会生成下划线成员属性
@property NSString *name;
@property NSString *height;
@end

NS_ASSUME_NONNULL_END
