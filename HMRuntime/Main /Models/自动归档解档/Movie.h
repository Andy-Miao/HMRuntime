//
//  Movie.h
//  HMRuntime
//
//  Created by humiao on 2019/7/14.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Item.h"
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject <NSCoding, ModelDelegate>

@property (nonatomic, strong) User * user;
@property (nonatomic, copy) NSString *movieId;
@property (nonatomic, copy) NSString *movieName;
@property (nonatomic, copy) NSString *pic_url;


@end

NS_ASSUME_NONNULL_END
