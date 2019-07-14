//
//  User.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, assign) BOOL vip;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) NSInteger mbrank;

@property (nonatomic, strong) NSNumber *age;

@property (nonatomic, copy) NSString *sex;

@property (nonatomic, strong) NSString *uid;

@end
