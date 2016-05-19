//
//  ViewController.m
//  JXContactController
//
//  Created by yuezuo on 16/5/19.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "ViewController.h"
#import "JXCategoryController.h"
#import "JXCategorySubController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

- (void)setup {
    
    CGFloat width = self.view.frame.size.width * 0.5;
    CGFloat height = self.view.frame.size.height - 64;
    // 添加一级菜单
    JXCategoryController * category = [[JXCategoryController alloc] init];
    // 添加父子控制器
    [self addChildViewController:category];
    category.view.frame = CGRectMake(0, 0, width, height);
    [self.view addSubview:category.view];
    
    
    JXCategorySubController * sub = [[JXCategorySubController alloc] init];
    [self addChildViewController:sub];
    // 左边代理为右边，右边可以监听左边数据变化
    category.delegate = sub;
    sub.view.frame = CGRectMake(width, 64, width, height);
    [self.view addSubview:sub.view];
    
}
@end
