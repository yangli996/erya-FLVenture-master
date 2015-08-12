//
//  UIColor+SanSgColor.m
//  community
//
//  Created by krisley on 15/3/11.
//  Copyright (c) 2015年 SanSheng. All rights reserved.
//

#import "UIColor+SanSgColor.h"

@implementation UIColor (SanSgColor)
+(UIColor *)mainTintColor
{
    return [UIColor UIColorFromHex:0xffffff];
}
+(UIColor *)mainNavBackgroundColor
{
    return [UIColor blackColor];
}
+(UIColor *)mainBackgroundColor
{
    return [UIColor UIColorFromHex:0xebebeb];
}
+(UIColor *)templateTitleColor
{
    return [UIColor UIColorFromHex:0x333333];
}
+(UIColor *)descriptionColor
{
    return [UIColor UIColorFromHex:0x666666];
}
+(UIColor *)disableColor
{
    return [UIColor UIColorFromHex:0xcccccc];
}

+(UIColor *)seperateLineColor
{
    return [UIColor UIColorFromHex:0xeeeeee];
}
+(UIColor *)borderLineColor
{
    return [UIColor UIColorFromHex:0xd0d0d0];
}

+(UIColor *)totalPersonColor
{
    return [UIColor UIColorFromHex:0x999999];
}
+(UIColor *)redTitleColor
{
    return [UIColor UIColorFromHex:0xfa6478];
}
+(UIColor *)blueTitleColor
{
    return [UIColor UIColorFromHex:0x30a9f2];
}

+(UIColor*)UIColorFromHex:(NSInteger)colorInHex
{
    // colorInHex should be value like 0xFFFFFF
    return [UIColor colorWithRed:((float) ((colorInHex & 0xFF0000) >> 16)) / 0xFF
                           green:((float) ((colorInHex & 0xFF00)   >> 8))  / 0xFF
                            blue:((float)  (colorInHex & 0xFF))            / 0xFF
                           alpha:1.0];
}
@end
