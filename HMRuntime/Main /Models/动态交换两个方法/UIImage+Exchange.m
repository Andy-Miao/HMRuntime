//
//  UIImage+Exchange.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "UIImage+Exchange.h"
#import <objc/message.h>

@implementation UIImage (Exchange)

/**
 load方法: 把类加载进内存的时候调用,只会调用一次
 方法应先交换，再去调用
 */

+ (void)load {
    
    // 获取imageName方法地址
    // class_getClassMethod（获取某个类的方法）
    Method imageNameMethod = class_getClassMethod(self, @selector(imageNamed:));
    // 获取hm_imageName方法地址
    Method hm_imageNamedMethod = class_getClassMethod(self, @selector(hm_imageNamed:));
    // 交换方法地址，相当于交换实现方式;「method_exchangeImplementations 交换两个方法的实现」
    method_exchangeImplementations(imageNameMethod, hm_imageNamedMethod);
}

/**
 看清楚下面是不会有死循环的
 调用 imageNamed => ln_imageNamed
 调用 ln_imageNamed => imageNamed
 */
+ (UIImage *)hm_imageNamed:(NSString *)name {
    UIImage *image = [UIImage hm_imageNamed:name];
    if (image) {
        NSLog(@"图片加载成功");
    } else {
        NSLog(@"图片加载失败");
    }
    return image;
}
@end
