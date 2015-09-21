//
//  BHBBubbleSort.m
//  CrazyMinions
//
//  Created by bihongbo on 9/15/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBBubbleSort.h"

@implementation BHBBubbleSort

- (void)main{
    
    int temp;
    for (int i = 0; i < _length; i++) {
        
        for (int j = 0; j < _length - 1; j ++) {
            
            if (_nums[j] > _nums[j + 1]) {
                
                temp = _nums[j];
                _nums[j] = _nums[j + 1];
                _nums[j + 1] = temp;
                
            }
            
            if (self.delegate && [self.delegate respondsToSelector:@selector(algorithm:GoingWithParam:andDetail:)]) {
                [self.delegate algorithm:self GoingWithParam:@{@"indexI":@(i),@"indexJ":@(j),@"valueJ":@(_nums[j]),@"valueJ+1":@(_nums[j + 1])} andDetail:@"交换过程"];
            }
            
        }
    }
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(algorithm:GoingWithParam:andDetail:)]) {
        [self.delegate algorithm:self GoingWithParam:nil andDetail:@"交换完毕"];
    }
    
    
}

@end
