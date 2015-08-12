//
//  LoginViewController.m
//  创业公社
//
//  Created by 肖芳 on 15/8/10.
//  Copyright (c) 2015年 肖芳. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController () <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate> {
    UITableView *loginTableView;
}
@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.title = @"登录";
    [self _initLoginTableView];
    // Do any additional setup after loading the view.
}
- (void)_initLoginTableView
{
    loginTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, Kwidth, kheight) style:UITableViewStylePlain];
    loginTableView.backgroundColor = [UIColor mainBackgroundColor];
    loginTableView.delegate = self;
    loginTableView.dataSource = self;
    loginTableView.scrollEnabled = NO;
    loginTableView.tableFooterView = [self addfootview];
    loginTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:loginTableView];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indenty = @"loginIndety";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indenty];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indenty];
        UILabel *thread = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, Kwidth, .5)];
        thread.backgroundColor = [UIColor seperateLineColor];
        [cell.contentView addSubview:thread];

        UILabel *thread2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 49.5, Kwidth, .5)];
        thread2.backgroundColor = [UIColor seperateLineColor];
        [cell.contentView addSubview:thread2];

        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 0, Kwidth - 40, 50)];
        textField.delegate = self;
        textField.tag = 3;
        [cell.contentView addSubview:textField];
    }
    UITextField *textFiled = (UITextField *)[cell.contentView viewWithTag:3];
    if (indexPath.section == 0) {
        textFiled.placeholder = @"请输入手机号";
    }
    else {
        textFiled.placeholder = @"请输入密码";
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    loginTableView.top += 20;
    return YES;
}
//尾部视图
- (UIView *)addfootview
{
    UIView *footView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, Kwidth, kheight - 140)];
    //立即注册
    UIButton *registerButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 20, 100, 20)];
    [registerButton setTitle:@"立即注册" forState:UIControlStateNormal];
    registerButton.tag = 4;
    [registerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [registerButton addTarget:self action:@selector(buttonaction2:) forControlEvents:UIControlEventTouchUpInside];
    [footView addSubview:registerButton];
    //找回密码
    UIButton *findButton = [[UIButton alloc] initWithFrame:CGRectMake(Kwidth - 100, 20, 100, 20)];
    [findButton setTitle:@"找回密码" forState:UIControlStateNormal];
    findButton.tag = 5;
    [findButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [findButton addTarget:self action:@selector(buttonaction2:) forControlEvents:UIControlEventTouchUpInside];
    findButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [footView addSubview:findButton];
    //登录

    FLCustomButton *loginButton = [[FLCustomButton alloc] init];
    [loginButton buttonframe:CGRectMake(50, findButton.bottom + 120, Kwidth - 100, 50) title:@"登录"];
    loginButton.tag = 6;
    [loginButton addTarget:self action:@selector(buttonaction2:) forControlEvents:UIControlEventTouchUpInside];
    [footView addSubview:loginButton];

    UIButton *otherLoginButton = [[UIButton alloc] initWithFrame:CGRectMake(loginButton.right - 100, loginButton.bottom + 10, 100, 20)];
    [otherLoginButton setTitle:@"社交账号登录" forState:UIControlStateNormal];
    otherLoginButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [otherLoginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    otherLoginButton.tag = 7;
    [otherLoginButton addTarget:self action:@selector(buttonaction2:) forControlEvents:UIControlEventTouchUpInside];
    [footView addSubview:otherLoginButton];
    return footView;
}
- (void)buttonaction2:(UIButton *)button
{

    switch (button.tag) {
        case 4:
            break;
        case 5:
            break;
        case 6: {
            AppDelegate *appdelegte = [[UIApplication sharedApplication] delegate];
            MainTabBarViewController *tabbar = [[MainTabBarViewController alloc] init];
            appdelegte.window.rootViewController = tabbar;
        } break;
        case 7:
            break;
        default:
            break;
    }
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    loginTableView.top -= 20;
    return YES;
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
