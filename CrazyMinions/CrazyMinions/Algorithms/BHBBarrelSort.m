//
//  BHBBarrelSort.m
//  CrazyMinions
//
//  Created by bihongbo on 9/9/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBBarrelSort.h"

@implementation BHBBarrelSort

- (void)main{
    
    int temp[MaxNumsLength];
    
    memset(temp, 0, sizeof(temp));
    
    for (int i = 0; i < _length; i ++) {
        temp[_nums[i]]++;
        if (self.delegate && [self.delegate respondsToSelector:@selector(algorithm:GoingWithParam:andDetail:)]) {
            [self.delegate algorithm:self GoingWithParam:@{@"index":@(i),@"tempIndex":@(_nums[i]),@"tempValue":@(temp[_nums[i]])} andDetail:@"桶"];
        }

    }
    
    for (int i = 0; i < MaxNumsLength; i ++) {
        while (temp[i] > 0) {
            printf("%d ",i);
            if (self.delegate && [self.delegate respondsToSelector:@selector(algorithm:GoingWithParam:andDetail:)]) {
                [self.delegate algorithm:self GoingWithParam:@{@"num":@(i)} andDetail:@"数字"];
            }
            temp[i]--;
        }
    }
}

@end
