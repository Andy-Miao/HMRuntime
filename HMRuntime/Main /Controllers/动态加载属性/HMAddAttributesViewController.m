//
//  HMAddAttributesViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMAddAttributesViewController.h"
#import "NSObject+Property.h"
@implementation HMAddAttributesViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self addAttribute];
}

- (void)addAttribute {
    
    NSObject *objc = [[NSObject alloc] init];
    objc.name = @"andy_miao";
    objc.height = @"174";
    NSLog(@"我的名字是%@ \n 我的升高是%@",objc.name,objc.height);
}

@end
