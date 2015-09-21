//
//  BHBAlgorithm.m
//  CrazyMinions
//
//  Created by bihongbo on 9/9/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBAlgorithm.h"

@implementation BHBAlgorithm

- (void)main{
    if (self.delegate && [self.delegate respondsToSelector:@selector(algorithm:GoingWithParam:andDetail:)]) {
        [self.delegate algorithm:self GoingWithParam:@{@"author":@"毕洪博"} andDetail:@"算法过程回调！"];
    }
}

@end
