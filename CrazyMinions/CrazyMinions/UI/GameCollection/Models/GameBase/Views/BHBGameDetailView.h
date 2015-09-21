//
//  BHBGameDetailView.h
//  CrazyMinions
//
//  Created by bihongbo on 9/16/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BHBGameDetailView : UITextView

/** 标题范围 */
@property (nonatomic, assign) NSRange titleRange;

@property (nonatomic, readonly ,assign) CGSize realSize;

@end
