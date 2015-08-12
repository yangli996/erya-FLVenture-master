//
//  TopicViewController.m
//  创业公社
//
//  Created by 肖芳 on 15/8/10.
//  Copyright (c) 2015年 肖芳. All rights reserved.
//

#import "TopicViewController.h"

@interface TopicViewController () <UITextFieldDelegate>

@end

@implementation TopicViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"发话题" style:UIBarButtonItemStylePlain target:self action:@selector(addTopicAction)];
    rightItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = rightItem;
    //搜索头
    [self _initHeadView];
    // Do any additional setup after loading the view.
}
- (void)addTopicAction
{
}
- (void)_initHeadView
{
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, Kwidth, 80)];
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 10, Kwidth - 100, 30)];
    //输入框
    textField.layer.masksToBounds = YES;
    textField.layer.borderColor = [[UIColor grayColor] CGColor];
    textField.layer.borderWidth = 1;
    textField.delegate = self;
    textField.placeholder = @"搜索感兴趣话题";
    [textField setValue:[UIFont boldSystemFontOfSize:14] forKeyPath:@"_placeholderLabel.font"];
    [headView addSubview:textField];
    //固定文字
    UILabel *topicLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, textField.bottom + 10, 50, 20)];
    topicLabel.text = @"话题";
    topicLabel.textColor = [UIColor blackColor];
    topicLabel.font = [UIFont systemFontOfSize:14];
    [headView addSubview:topicLabel];

    UILabel *pateCount = [[UILabel alloc] initWithFrame:CGRectMake(Kwidth - 70, textField.bottom + 10, 60, 20)];
    pateCount.text = @"参与人数";
    pateCount.font = [UIFont systemFontOfSize:14];
    pateCount.textColor = [UIColor blackColor];
    [headView addSubview:pateCount];
    //分割线
    UILabel *thread = [[UILabel alloc] initWithFrame:CGRectMake(20, 79.5, Kwidth - 40, .5)];
    thread.backgroundColor = [UIColor grayColor];
    [headView addSubview:thread];

    [self.view addSubview:headView];
}
#pragma mark textfiled delegte
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
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
