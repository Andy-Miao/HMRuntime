//
//  HMPerson.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HMPerson : NSObject

- (HMPerson *)eat;

- (HMPerson *)run:(int)meter;
@end

NS_ASSUME_NONNULL_END
