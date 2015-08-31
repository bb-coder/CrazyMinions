//
//  NSJSONSerialization+BHB.h
//  WeChat
//
//  Created by bihongbo on 15/3/24.
//  Copyright (c) 2015年 毕洪博. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (BHB)

+ (NSString *)jsonStringWithJSONObject:(id)theData;

+ (id)toArrayOrNSDictionaryWithJsonstring:(NSString *)jsonString;

@end
