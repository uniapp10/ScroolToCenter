//
//  ViewController.m
//  ScrollToCenter
//
//  Created by zhudong on 2017/5/23.
//  Copyright © 2017年 zhudong. All rights reserved.
//

#import "ViewController.h"
#import "ZDScrollView.h"
#import "UIView+Extension.h"

CGFloat btnW = 100;
CGFloat btnY = 100;
CGFloat btnH = 50;

@interface ViewController ()

@property (nonatomic, strong) ZDScrollView *scrollV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake((ScreenSize.width - 2.5 * btnW) * 0.5, 100, btnW, btnH);
    [btn addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"show" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor greenColor];
    
    UIButton *btn_close = [UIButton buttonWithType:UIButtonTypeCustom];
    btn_close.frame = CGRectMake((ScreenSize.width - 2.5 * btnW) * 0.5 + 1.5 * btnW , 100, btnW, btnH);
    [btn_close addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [btn_close setTitle:@"close" forState:UIControlStateNormal];
    [self.view addSubview:btn_close];
    btn_close.backgroundColor = [UIColor redColor];
}

- (void)show{
    CGFloat offsetY = 50;
    _scrollV = [[ZDScrollView alloc] initWithFrame:CGRectMake(0, btnY + btnH + offsetY, ScreenSize.width, 50)];
    _scrollV.margin = 10;
    _scrollV.lineHeight = 3;
    [_scrollV cornerRadius:0 borderColor:[UIColor grayColor].CGColor borderWidth:1];
    _scrollV.titles = @[@"分时", @"两日", @"1小时", @"4小时", @"日K", @"周K", @"月K", @"1分", @"5分", @"15分", @"30分", ];
    [self.view addSubview:_scrollV];
}

- (void)close{
    [self.scrollV removeFromSuperview];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
