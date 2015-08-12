//
//  HomeViewController.m
//  创业公社
//
//  Created by 肖芳 on 15/8/10.
//  Copyright (c) 2015年 肖芳. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController () <UIScrollViewDelegate> {
    UIPageControl *_page;
    NSTimer *_timer;
    int _count;
    UIScrollView *_scrollview;
}
@end

@implementation HomeViewController
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self timestar];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    [self _initScrollview];
    _count = 0;
    // Do any additional setup after loading the view.
}
//轮播图
- (void)_initScrollview
{
    //滑动视图
    _scrollview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, Kwidth, 150)];
    _scrollview.showsHorizontalScrollIndicator = NO;
    _scrollview.showsVerticalScrollIndicator = NO;
    _scrollview.pagingEnabled = YES;
    _scrollview.bounces = NO;
    _scrollview.delegate = self;
    //
    _page = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 130, Kwidth, 20)];
    _page.numberOfPages = 5;
    _page.currentPage = 0;
    _page.currentPageIndicatorTintColor = [UIColor redColor];
    _page.pageIndicatorTintColor = [UIColor whiteColor];
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
    int i;
    for (i = 0; i < 5; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(Kwidth * i, 0, Kwidth, 150)];
        if (i % 2) {
            imageView.backgroundColor = [UIColor magentaColor];
        }
        else {
            imageView.backgroundColor = [UIColor greenColor];
        }
        [_scrollview addSubview:imageView];
    }
    _scrollview.contentSize = CGSizeMake(i * Kwidth, 0);
    [self.view addSubview:_scrollview];
    [self.view addSubview:_page];
}
- (void)timeAction
{
    int i = _count % 5;
    [_page setCurrentPage:i];
    [_scrollview setContentOffset:CGPointMake(Kwidth * i, 0)];
    _count++;
}
- (void)timestar
{
    [_timer setFireDate:[NSDate date]];
}

- (void)timerstop
{
    [_timer setFireDate:[NSDate distantFuture]];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //[self timerstop];
    int i = scrollView.contentOffset.x / Kwidth;
    _page.currentPage = i;
    //[self performSelector:@selector(timestar) withObject:nil afterDelay:1];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
}
- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [self timerstop];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc
{
    if (_timer != nil) {
        [_timer invalidate];
    }
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
