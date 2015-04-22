//
//  RootViewController.m
//  DockDemo2
//
//  Created by 刘小辉 on 15/1/24.
//  Copyright (c) 2015年 maozhi. All rights reserved.
//

#import "RootViewController.h"
#import "StarView.h"
@interface RootViewController ()<StarDelegate>

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    StarView *view = [[StarView alloc] initWithFrame:CGRectMake(20, 30, 300, 60)];
    [self.view addSubview:view];
    view.delegate = self;
    view.title = @"评星";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)starView:(UIView *)starView selectIndex:(NSInteger)index
{
    NSLog(@"评价%d颗星星",index);
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
