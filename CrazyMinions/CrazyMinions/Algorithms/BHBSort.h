//
//  BHBSort.h
//  CrazyMinions
//
//  Created by bihongbo on 9/15/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBAlgorithm.h"

/**
 *  排序的基类，存储数组和数组长度
 */

@interface BHBSort : BHBAlgorithm
{
    int *_nums;
    int _length;
}

/**
 *  待排序数组,数组内最大数字不能超过MaxNumsLength
 *
 *  @param nums   数组
 *  @param length 数组长度
 */
- (void)setNums:(int *)nums andLength:(int)length;


@end
