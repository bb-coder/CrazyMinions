//
//  NSString+BHB.m
//  WeChat
//
//  Created by bihongbo on 15/3/24.
//  Copyright (c) 2015年 毕洪博. All rights reserved.
//

#import "NSString+BHB.h"

@implementation NSString (BHB)

//字符串是否为空
- (BOOL)isEmpty
{
    return [NSString isEmptyWithString:self];
}

+ (BOOL)isEmptyWithString:(NSString *)string
{
    return (![string isKindOfClass:[NSString class]] || string == nil || [string isEqualToString:@""] || [string isEqualToString:@"NULL"] || [string isEqualToString:@" "]);
}

@end
