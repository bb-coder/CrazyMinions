//
//  BHBGameCell.h
//  CrazyMinions
//
//  Created by bihongbo on 9/4/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHBRole.h"

@interface BHBGameCell : UICollectionViewCell

@property (nonatomic, strong) UIImageView * iconIV;

@property (nonatomic, strong) NSString * title;

@property (nonatomic, strong) BHBRole * role;

@end
