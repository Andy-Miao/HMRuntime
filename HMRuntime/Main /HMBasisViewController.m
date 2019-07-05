//
//  HMBasisViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMBasisViewController.h"



@interface HMBasisViewController ()

@end

@implementation HMBasisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupView];
    // Do any additional setup after loading the view.
}

- (void)setupView {
    UIView *navBarView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CUREENT_SCREEN_WIDTH, 64)];
    navBarView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:navBarView];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, CUREENT_SCREEN_WIDTH, 40)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.text = [self controllerTitle];
    titleLabel.font = [UIFont systemFontOfSize:18.f];
    [navBarView addSubview:titleLabel];

}

- (NSString *)controllerTitle {
    return @"默认标题";
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
