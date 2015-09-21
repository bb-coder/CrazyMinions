//
//  BHBBubbleSort.h
//  CrazyMinions
//
//  Created by bihongbo on 9/15/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

/**
 *  冒泡排序算法复杂度O(n*n)
 *  冒泡排序也是一种交换排序，它利用相邻位置的元素按照大小交换的原理，将元素按照大小逐个后移，类似气泡在水中升起的过程，由此得名。
 */

#import "BHBAlgorithm.h"
#import "BHBSort.h"

//--------交换过程------------
#define dictKey1 @"IndexI"
#define dictKey2 @"IndexJ"
#define dictKey3 @"valueJ"
#define dictKey4 @"valueJ+1"
#define dictDetail1 @"交换过程"

//--------交换完毕

@interface BHBBubbleSort : BHBSort

@end
