//
//  HMRuntimeDicViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/5.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMRuntimeDicViewController.h"
#import "StatusItem.h"
#import "NSObject+Model.h"
//
#import "StatusItem2.h"
#import "NSObject+Mod.h"

#import "StatusItem3.h"
#import "NSObject+Item.h"

@interface HMRuntimeDicViewController ()

@end

@implementation HMRuntimeDicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (NSDictionary *)parsingWithFile:(NSString *)str{
    // 解析Plist文件
    NSString *filePath = [[NSBundle mainBundle] pathForResource:str ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    return dict;
}
// 字典的key和模型的属性不匹配「模型属性数量大于字典键值对数」，这种情况处理如下：
- (IBAction)buttonAction1:(id)sender {
    StatusItem *item = [StatusItem modelWithDict:[self parsingWithFile:@"status1.plist"]];
    NSLog(@"%@",item);
}
// 模型中嵌套模型「模型属性是另外一个模型对象」，这种情况处理如下：
- (IBAction)buttonAction2:(id)sender {
    StatusItem2 *item = [StatusItem2 modelWithDict2:[self parsingWithFile:@"status2.plist"]];
    NSLog(@"%@--%@",item,item.user);
}
// 数组中装着模型「模型的属性是一个数组，数组中是字典模型对象」，这种情况处理如下：
- (IBAction)buttonAction3:(id)sender {
    StatusItem *item = [StatusItem modelWithDict:[self parsingWithFile:@"status3.plist"]];
    NSLog(@"%@",item);
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
