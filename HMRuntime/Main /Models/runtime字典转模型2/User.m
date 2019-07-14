//
//  User.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "User.h"

@implementation User

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@--%@--%@--", _name, _age, _sex];
}


- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.uid = value;
    }
}

@end
