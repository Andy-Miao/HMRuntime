//
//  HMPerson.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMPerson.h"
#import <objc/message.h>

@implementation HMPerson

- (HMPerson *)eat {
    NSLog(@"eat");
    return objc_msgSend([HMPerson class], @selector(alloc));
}

- (HMPerson *)run:(int)meter {
    NSLog(@"run : %d", meter);
    return objc_msgSend([HMPerson class], @selector(alloc));
}

- (void)personRun {
    NSLog(@"生命在于运动");
}

@end
