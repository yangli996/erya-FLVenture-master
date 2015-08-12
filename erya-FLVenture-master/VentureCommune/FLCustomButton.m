//
//  FLCustomButton.m
//  VentureCommune
//
//  Created by 肖芳 on 15/8/10.
//  Copyright (c) 2015年 肖芳. All rights reserved.
//

#import "FLCustomButton.h"
#import "Header.h"
@implementation FLCustomButton
- (void)buttonframe:(CGRect)frame title:(NSString *)title
{
    self.frame = frame;
    self.backgroundColor = [UIColor whiteColor];
    self.layer.masksToBounds = YES;
    self.layer.borderColor = [[UIColor UIColorFromHex:0xffffff] CGColor];
    self.layer.borderWidth = .3;
    [self setTitle:title forState:UIControlStateNormal];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
