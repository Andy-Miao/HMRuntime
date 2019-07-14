//
//  HMAddMethodViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/14.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMAddMethodViewController.h"
#import "HMRobot.h"
// 此分类还有一个隐藏功能， 可以在方法上额外添加其他附加功能 与UIButton+ Count实现
@interface HMAddMethodViewController ()

@end

@implementation HMAddMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self addMethods];
}

- (void)addMethods {
    HMRobot *robot = [[HMRobot   alloc] init];
    
    // 执行某个方法
    [robot performSelector:@selector(run:) withObject:@100];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
