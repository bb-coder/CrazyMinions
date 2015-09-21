//
//  BHBMagicMoveTransition.m
//  CrazyMinions
//
//  Created by bihongbo on 9/4/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBMagicMoveTransition.h"
#import "BHBGameCollectionVC.h"
#import "GameBase_VC.h"
#import "BHBGameCell.h"

@implementation BHBMagicMoveTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.6;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    BHBGameCollectionVC *fromVC = (BHBGameCollectionVC *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    GameBase_VC *toVC   = (GameBase_VC *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    BHBGameCell *cell =(BHBGameCell *)[fromVC.collectionView cellForItemAtIndexPath:[[fromVC.collectionView indexPathsForSelectedItems] firstObject]];
    fromVC.indexPath = [[fromVC.collectionView indexPathsForSelectedItems]firstObject];
    
    UIView * snapShotView = [cell.iconIV snapshotViewAfterScreenUpdates:NO];
    snapShotView.frame = fromVC.finalCellRect = [containerView convertRect:cell.iconIV.frame fromView:cell.iconIV.superview];
    cell.iconIV.hidden = YES;
    
    toVC.view.frame = [transitionContext finalFrameForViewController:toVC];
    toVC.view.alpha = 0;
    toVC.roleIV.hidden = YES;

    [containerView addSubview:toVC.view];
    [containerView addSubview:snapShotView];

    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0f usingSpringWithDamping:0.6f initialSpringVelocity:1.0f options:UIViewAnimationOptionCurveLinear animations:^{
        toVC.view.alpha = 1.0;
        snapShotView.frame = [containerView convertRect:toVC.roleIV.frame fromView:toVC.view];
    } completion:^(BOOL finished) {
        toVC.roleIV.hidden = NO;
        cell.iconIV.hidden = NO;
        [snapShotView removeFromSuperview];
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];

    
    
}

@end
