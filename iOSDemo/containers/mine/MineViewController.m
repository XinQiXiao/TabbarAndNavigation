//
//  MineViewController.m
//  系统地图
//
//  Created by qixin on 2018/5/15.
//  Copyright © 2018年 qixin. All rights reserved.
//

#import "MineViewController.h"
#import "MapDemoViewController.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的";
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 30)];
//    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"MKMapDemo" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(toMKMap) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.tabBarController.tabBar.hidden = NO;
}

-(void)toMKMap{
    
    [self.navigationController pushViewController:[MapDemoViewController new] animated:YES];
    self.tabBarController.tabBar.hidden = YES;
}

@end