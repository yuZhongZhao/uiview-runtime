//
//  ViewController.m
//  分类添加属性
//
//  Created by 赵玉忠 on 2018/6/6.
//  Copyright © 2018年 赵玉忠. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Click.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100   )];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [view addTapBlock:^(id obj) {
        NSLog(@"添加了点击手势");
    }];
}
@end
