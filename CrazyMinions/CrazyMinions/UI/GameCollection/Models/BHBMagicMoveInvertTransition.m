//
//  BHBMagicMoveInvertTransition.m
//  CrazyMinions
//
//  Created by bihongbo on 9/4/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBMagicMoveInvertTransition.h"
#import "BHBGameCollectionVC.h"
#import "GameBase_VC.h"
#import "BHBGameCell.h"

@implementation BHBMagicMoveInvertTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.6;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    BHBGameCollectionVC *toVC = (BHBGameCollectionVC *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    GameBase_VC *fromVC = (GameBase_VC *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    UIView  *snapShotView = [fromVC.roleIV snapshotViewAfterScreenUpdates:NO];
    snapShotView.backgroundColor = [UIColor clearColor];
    snapShotView.frame = [containerView convertRect:fromVC.roleIV.frame fromView:fromVC.view];
    fromVC.roleIV.hidden = YES;
    
    toVC.view.frame = [transitionContext finalFrameForViewController:toVC];
    
    BHBGameCell *cell = (BHBGameCell *)[toVC.collectionView cellForItemAtIndexPath:toVC.indexPath];
    cell.iconIV.hidden = YES;
    

    [containerView insertSubview:toVC.view belowSubview:fromVC.view];
    [containerView addSubview:snapShotView];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0f usingSpringWithDamping:0.6f initialSpringVelocity:1.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        fromVC.view.alpha = 0.0f;
        snapShotView.frame = toVC.finalCellRect;
    } completion:^(BOOL finished) {
        [snapShotView removeFromSuperview];
        fromVC.roleIV.hidden = NO;
        cell.iconIV.hidden = NO;
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];

}

@end
