//
//  BHBGameCollectionVC.h
//  CrazyMinions
//
//  Created by bihongbo on 9/3/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BHBGameCollectionVC : UIViewController

@property (nonatomic,strong) UICollectionView * collectionView;

@property(nonatomic,strong)NSIndexPath *indexPath;
@property(nonatomic,assign)CGRect finalCellRect;

@end
