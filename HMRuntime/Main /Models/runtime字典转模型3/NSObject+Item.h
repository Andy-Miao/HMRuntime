//
//  NSObject+Item.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModelDelegate <NSObject>

@optional
//【提供一个协议，只要遵守这个协议的类，都能把数组中的字典转模型】
//【用在三级数组转换】
+ (NSDictionary *)arrayContainModelClass;

@end
@interface NSObject (Item)

// 字典转模型
+ (instancetype)modelWithDict3:(NSDictionary *)dict;
@end
