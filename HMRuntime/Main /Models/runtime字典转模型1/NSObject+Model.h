//
//  NSObject+Model.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//
//  Runtime:根据模型中属性,去字典中取出对应的value给模型属性赋值

#import <Foundation/Foundation.h>

@interface NSObject (Model)
// 字典转模型
+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
