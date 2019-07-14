//
//  HMArchiveSolutionViewController.m
//  HMRuntime
//
//  Created by humiao on 2019/7/14.
//  Copyright © 2019 humiao. All rights reserved.
//

#import "HMArchiveSolutionViewController.h"
#import "Movie.h"
@interface HMArchiveSolutionViewController ()
@property (nonatomic, strong) NSMutableArray *allDataArray;
@end

@implementation HMArchiveSolutionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.allDataArray = [NSMutableArray array];
    
    NSDictionary *user = @{ @"name":@"HM",
                            @"age": @(19),
                            @"sex": @"man",
                            };
    
    NSDictionary *dict = @{ @"movieId":@"666",
                            @"movieName": @"539fU8276",
                            @"pic_url": @"http://www.baidu.com",
                            @"user" : user
                            };
    
    
    NSArray *addarr = @[dict ,dict, dict];
    
    NSMutableDictionary *mudict = [NSMutableDictionary dictionaryWithDictionary:dict];
    
    
    [mudict setObject:user forKey:@"user"];
    
    for (NSDictionary *item in addarr) {
        
        //系统自带的方式
        //        Movie *movie = [Movie new];
        //        [movie setValuesForKeysWithDictionary:item];
        //        [self.allDataArray addObject:movie];
        
        Movie *movie = [Movie modelWithDict3:item];
        [self.allDataArray addObject:movie];
        
    }
    
    NSLog(@"----%@", _allDataArray);
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    Movie *m = [Movie new];
    m.movieName = @"hm";
    m.movieId = @"19";
    m.pic_url = @"http://www.baidu.com";
    
    NSString *document  = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    NSString *filePath = [document stringByAppendingString:@"/123.txt"];
    
    //模型写入文件
    [NSKeyedArchiver archiveRootObject:m toFile:filePath];
    
    
    //读取
    Movie *movie =  [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    
    NSLog(@"----%@",movie);
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
