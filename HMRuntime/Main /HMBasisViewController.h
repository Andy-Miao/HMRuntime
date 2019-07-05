//
//  HMBasisViewController.h
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define CUREENT_SCREEN_SIZE     [[UIScreen mainScreen] bounds].size
#define CUREENT_SCREEN_WIDTH    [[UIScreen mainScreen] bounds].size.width
#define CUREENT_SCREEN_HEGHT    [[UIScreen mainScreen] bounds].size.height
@interface HMBasisViewController : UIViewController

/**
 当前Controller的标题
 */
-(NSString *)controllerTitle;

@end

NS_ASSUME_NONNULL_END
