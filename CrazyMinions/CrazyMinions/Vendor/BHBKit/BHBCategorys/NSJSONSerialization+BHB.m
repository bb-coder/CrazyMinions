//
//  NSJSONSerialization+BHB.m
//  WeChat
//
//  Created by bihongbo on 15/3/24.
//  Copyright (c) 2015年 毕洪博. All rights reserved.
//

#import "NSJSONSerialization+BHB.h"

@implementation NSJSONSerialization (BHB)

// 将字典或者数组转化为JSON字符串
+ (NSString *)jsonStringWithJSONObject:(id)theData{
    
    NSError *error = nil;
    if (theData == nil) {
        NSLog(@"theData 为空");
        return nil;
    }
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:theData
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:&error];
    
    if ([jsonData length] > 0 && error == nil){
        //        return jsonData;
    }else{
        NSLog(@"JSONSerialization Error: %@", error);
        return nil;
    }
    
    //使用这个方法的返回，我们就可以得到想要的JSON串
    NSString *jsonString = [[NSString alloc] initWithData:jsonData
                                                 encoding:NSUTF8StringEncoding];
    return jsonString;
}


// 将JSON串转化为字典或者数组
+ (id)toArrayOrNSDictionaryWithJsonstring:(NSString *)jsonString{
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    //将NSString转化为NSData
    id jsonObject = nil;
    NSError *error = nil;
    if (jsonData) {
        jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData
                                                     options:NSJSONReadingAllowFragments
                                                       error:&error];
    }else{
        // 解析错误
        NSLog(@"JSONSerialization Error: %@", error);
        return nil;
    }
    
    if (jsonObject != nil && error == nil){
        return jsonObject;
    }else{
        // 解析错误
        NSLog(@"JSONSerialization Error: %@", error);
        return nil;
    }
    
}


@end
