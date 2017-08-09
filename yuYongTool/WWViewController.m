//
//  WWViewController.m
//  yuYongTool
//
//  Created by fcrj on 2017/8/3.
//  Copyright © 2017年 heshanwangluo. All rights reserved.
//

#import "WWViewController.h"
#import "PhotoSelectViewController.h"
#import "IQKeyboardManager.h"

@interface WWViewController ()

@end

@implementation WWViewController


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
    /**
     * 单个页面禁用
     * 显示时禁用
     */
//    [IQKeyboardManager sharedManager].enable = NO;
    
    /**
     *  完成 工具条是否使用
     */ 
//    [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
    
    /**
     * 设置回车键
     */
    
//
    /**
     * 点击背景取消键盘
     */
//    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    
    /**
     *  navi的导航栏不上移
     */
//    重写loadview
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    /**
     * 页面消失取消禁用
     */
//    [IQKeyboardManager sharedManager].enable = YES;
    
    
    // 在 APPdelegate 中设置允许/不允许使用的类 buhaoshi?
//    [IQKeyboardManager sharedManager] disable;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    
    self.view.backgroundColor = [UIColor redColor];
    
    
    // photoSelect
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 80)];
    
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"photoSelect" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(actionAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    // IQKeyBoard
    UITextField * testIQTF = [[UITextField   alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height-100, self.view.frame.size.width-20, 30)];
    testIQTF.placeholder   = @"测试使用IQKeyBoard";
    testIQTF.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:testIQTF];
}

- (void) actionAction{
    
    
    
    
        PhotoSelectViewController * photoVC = [[PhotoSelectViewController alloc] init];
//    UINavigationController * navi = [[UINavigationController alloc] initWithRootViewController:photoVC];

    [self.navigationController pushViewController:photoVC animated:YES];
    
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
