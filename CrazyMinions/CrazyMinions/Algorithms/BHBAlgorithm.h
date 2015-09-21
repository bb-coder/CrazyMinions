//
//  BHBAlgorithm.h
//  CrazyMinions
//
//  Created by bihongbo on 9/9/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  算法回调协议，用来输出算法执行过程或者结果
 */
@class BHBAlgorithm;

@protocol BHBAlgorithmDelegate <NSObject>

@optional

- (void)algorithm:(BHBAlgorithm *)algorithm GoingWithParam:(NSDictionary *)param andDetail:(NSString *)deltail;

@end

/**
 *  算法的基类，设置main方法
 */

@interface BHBAlgorithm : NSObject


@property (nonatomic,weak) id<BHBAlgorithmDelegate> delegate;

- (void)main;

@end
