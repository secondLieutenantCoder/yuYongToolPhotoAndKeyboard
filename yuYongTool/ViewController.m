//
//  ViewController.m
//  yuYongTool
//
//  Created by fcrj on 2017/8/3.
//  Copyright © 2017年 heshanwangluo. All rights reserved.
//

#import "ViewController.h"

#import "WWViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    
    btn.backgroundColor = [UIColor cyanColor];
    
    [btn addTarget:self action:@selector(actionAction) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:btn];
}

- (void) actionAction{

    
    WWViewController * wwVC = [[WWViewController alloc] init];
    
//    PhotoSelectViewController * photoVC = [[PhotoSelectViewController alloc] init];
    UINavigationController * navi = [[UINavigationController alloc] initWithRootViewController:wwVC];
    
    [self presentViewController:navi animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
