//
//  MainTabBarViewController.m
//  创业公社
//
//  Created by 肖芳 on 15/8/10.
//  Copyright (c) 2015年 肖芳. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "HomeViewController.h"
#import "TopicViewController.h"
#import "AskViewController.h"
#import "FriendsViewController.h"
#import "MyViewController.h"
@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    HomeViewController *home = [[HomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:home];
    [homeNav.tabBarItem setImage:[UIImage imageNamed:@""]];
    [homeNav.tabBarItem setSelectedImage:[UIImage imageNamed:@""]];
    home.title = @"首页";
    // homeNav.tabBarItem.title = @"首页";

    TopicViewController *topic = [[TopicViewController alloc] init];
    UINavigationController *topicNav = [[UINavigationController alloc] initWithRootViewController:topic];
    [topicNav.tabBarItem setImage:[UIImage imageNamed:@""]];
    [topicNav.tabBarItem setSelectedImage:[UIImage imageNamed:@""]];
    topic.title = @"话题";

    AskViewController *ask = [[AskViewController alloc] init];
    UINavigationController *AskNav = [[UINavigationController alloc] initWithRootViewController:ask];
    [AskNav.tabBarItem setImage:[UIImage imageNamed:@""]];
    [AskNav.tabBarItem setSelectedImage:[UIImage imageNamed:@""]];
    ask.title = @"问";

    FriendsViewController *friends = [[FriendsViewController alloc] init];
    UINavigationController *friendsNav = [[UINavigationController alloc] initWithRootViewController:friends];
    [friendsNav.tabBarItem setImage:[UIImage imageNamed:@""]];
    [friendsNav.tabBarItem setSelectedImage:[UIImage imageNamed:@""]];
    friends.title = @"朋友";

    MyViewController *my = [[MyViewController alloc] init];
    UINavigationController *myNav = [[UINavigationController alloc] initWithRootViewController:my];
    [myNav.tabBarItem setImage:[UIImage imageNamed:@""]];
    [myNav.tabBarItem setSelectedImage:[UIImage imageNamed:@""]];
    my.title = @"我的";
    self.viewControllers = @[ homeNav, topicNav, AskNav, friendsNav, myNav ];
    [self.tabBar setBarStyle:UIBarStyleBlackOpaque];
    // Do any additional setup after loading the view.
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
