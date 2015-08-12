//
//  UIColor+SanSgColor.h
//  community
//
//  Created by krisley on 15/3/11.
//  Copyright (c) 2015年 SanSheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (SanSgColor)

+(UIColor *)mainTintColor;
+(UIColor *)mainNavBackgroundColor;
+(UIColor *)mainBackgroundColor;
+(UIColor *)templateTitleColor;
+(UIColor *)descriptionColor;
+(UIColor *)disableColor;
+(UIColor *)seperateLineColor;
+(UIColor *)borderLineColor;
+(UIColor *)totalPersonColor;
+(UIColor *)redTitleColor;
+(UIColor *)blueTitleColor;

+(UIColor*)UIColorFromHex:(NSInteger)colorInHex;

@end
