//
//  UIColor+hexColor.h
//  CrazyMinions
//
//  Created by bihongbo on 9/4/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (hexColor)


+ (UIColor *)colorWithHex:(long)hexColor;
+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;

@end
