//
//  ViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/4.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "ViewController.h"
#import "HMMessageViewController.h"

#define CUREENT_SCREEN_SIZE     [[UIScreen mainScreen] bounds].size
#define CUREENT_SCREEN_WIDTH    [[UIScreen mainScreen] bounds].size.width
#define CUREENT_SCREEN_HEGHT    [[UIScreen mainScreen] bounds].size.height

static NSString *CELL_ID = @"UITableViewCell";
@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    [self loadData];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_ID];
}

- (void)loadData {
    _dataSource = @[@"runtime字典转模型"];
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
            
        default:
            break;
    }
    
    [self presentViewController:vc animated:YES completion:nil];
}
@end
