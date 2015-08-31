//
//  UIButton+BHB.h
//  WeChat
//
//  Created by bihongbo on 15/3/24.
//  Copyright (c) 2015年 毕洪博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (BHB)

/**
 * 设置普通状态与高亮状态的背景图片
 */
-(void)setN_BG:(NSString *)nbg H_BG:(NSString *)hbg;

/**
 * 设置普通状态与高亮状态的拉伸后背景图片
 */
-(void)setResizeN_BG:(NSString *)nbg H_BG:(NSString *)hbg;

@end
