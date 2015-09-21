//
//  BHBBarrelSort.h
//  CrazyMinions
//
//  Created by bihongbo on 9/9/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

/**
 *  桶排序
 *  利用空间换时间，算法复杂度O(n)
 */

#define MaxNumsLength 10000

//回调方法字典中的key
//-------数字-----
#define dictKey1 @"num"
#define dictDetail1 @"数字"

//-------桶-------
#define dictKey2 @"index"
#define dictKey3 @"tempIndex"
#define dictKey4 @"tempValue"
#define dictDetail2 @"桶"

#import "BHBAlgorithm.h"
#import "BHBSort.h"

@interface BHBBarrelSort : BHBSort


@end
