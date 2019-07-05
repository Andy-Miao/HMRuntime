//
//  HMExchangeMethodController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMExchangeMethodController.h"
#import "UIImage+Exchange.h"

@interface HMExchangeMethodController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageV;


@end

@implementation HMExchangeMethodController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self exchangeMethods];
}
//--------------------------- Runtime(交换方法) ------------------------------//
- (void)exchangeMethods {
     // imageNamed => ln_imageNamed 交互这两个方法实现
    
    self.imageV.image = [UIImage hm_imageNamed:@"https:github.comaccount"];
}

@end
