//
//  ViewController.m
//  自定义Button
//
//  Created by ZKJ on 2017/3/2.
//  Copyright © 2017年 ZKJ. All rights reserved.
//

#import "ViewController.h"
#import "ZkjButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 自定义button
    ZkjButton *btn = [ZkjButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 50, 100, 25);
    btn.backgroundColor = [UIColor greenColor];
    [btn setTitle:@"日期" forState:UIControlStateNormal];
//    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"圆箭头-50x50"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // 系统自带button
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(50, 100, 100, 25);
    btn1.backgroundColor = [UIColor greenColor];
    [btn1 setTitle:@"日期" forState:UIControlStateNormal];
//    [btn1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"圆箭头-50x50"] forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

- (void)btnClick
{
    NSLog(@"%s", __func__);
}


@end
