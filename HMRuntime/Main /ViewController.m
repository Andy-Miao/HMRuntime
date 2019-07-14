//
//  ViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/4.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "ViewController.h"
#import "HMMessageViewController.h"
#import "HMExchangeMethodController.h"
#import "HMAddAttributesViewController.h"
#import "HMRuntimeDicViewController.h"
#import "HMAddMethodViewController.h"
#import "HMArchiveSolutionViewController.h"

static NSString *CELL_ID = @"UITableViewCell";
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"runtime详解";
    // Do any additional setup after loading the view.
    [self loadData];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_ID];
}

- (void)loadData {
    _dataSource = @[@"runtime消息机制", @"动态交换两个方法",@"动态加载属性",@"runtime字典转模型的三种情况",@"动态加载方法"];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, CUREENT_SCREEN_WIDTH, CUREENT_SCREEN_HEGHT) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        [self.view addSubview:self.tableView];
    }
    return _tableView;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    cell.textLabel.text = _dataSource[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController  *vc;
    switch (indexPath.row) {
        case 0:
            vc = [HMMessageViewController new];
            break;
        case 1:
            vc = [HMExchangeMethodController new];
            break;
        case 2:
            vc = [HMAddAttributesViewController new];
            break;
        case 3:
            vc = [HMRuntimeDicViewController new];
            break;
        case 4 :
            vc = [HMAddMethodViewController new];
            break;
        case 5:
            vc = [HMArchiveSolutionViewController new];
            break;
//        case 6:
//            vc = [HMArchiveSolutionViewController new];
//            break;
        default:
            break;
    }
    vc.title = _dataSource[indexPath.row];
    [self.navigationController pushViewController:vc  animated:YES];
}
@end
