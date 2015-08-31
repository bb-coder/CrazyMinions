//
//  UIBarButtonItem+BHB.h
//  WeChat
//
//  Created by bihongbo on 15/3/24.
//  Copyright (c) 2015年 毕洪博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (BHB)

/**
 *  快速创建一个显示图片的item
 *
 *  @param action   监听方法
 */
+ (UIBarButtonItem *)itemWithIcon:(NSString *)icon highIcon:(NSString *)highIcon target:(id)target action:(SEL)action;

@end
