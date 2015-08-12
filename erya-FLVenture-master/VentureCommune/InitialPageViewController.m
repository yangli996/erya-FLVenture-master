//
//  InitialPageViewController.m
//  创业公社
//
//  Created by 肖芳 on 15/8/10.
//  Copyright (c) 2015年 肖芳. All rights reserved.
//

#import "InitialPageViewController.h"
@interface InitialPageViewController ()

@end

@implementation InitialPageViewController
- (void)viewWillAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    //初始化页面
    [self _initView];
    // Do any additional setup after loading the view.
}
- (void)_initView
{
    float jl = (Kwidth - 2 * 140) / 3.0;
    NSArray *names = @[ @"登录或注册", @"随便看看" ];
    for (int i = 0; i < 2; i++) {
        FLCustomButton *button = [[FLCustomButton alloc] init];
        [button buttonframe:CGRectMake(i * (140 + jl) + jl, kheight - 100, 140, 40) title:names[i]];
        if (i == 0) {
            [button setBackgroundColor:[UIColor grayColor]];
        }
        [button addTarget:self action:@selector(buttonaction:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;
        [self.view addSubview:button];
    }
}

- (void)buttonaction:(UIButton *)button
{
    if (button.tag == 0) {
        LoginViewController *login = [[LoginViewController alloc] init];
        [self.navigationController pushViewController:login animated:YES];
    }
    else {
        AppDelegate *appdelgate = [[UIApplication sharedApplication] delegate];
        MainTabBarViewController *tabbar = [[MainTabBarViewController alloc] init];
        appdelgate.window.rootViewController = tabbar;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
