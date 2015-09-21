//
//  BHBScaleMoveTransition.m
//  CrazyMinions
//
//  Created by bihongbo on 9/3/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

#import "BHBScaleMoveTransition.h"

@implementation BHBScaleMoveTransition

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext{
    return .3;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    
    //获取两个VC 和 动画发生的容器
    UIViewController *fromVC = (UIViewController *)[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toVC   = (UIViewController *)[transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIView *containerView = [transitionContext containerView];
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(toVC.view.frame.size.width, toVC.view.frame.size.height), NO, [[UIScreen mainScreen] scale]);
    [toVC.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView * toVIV = [[UIImageView alloc]init];
    toVIV.image = image;
    toVIV.bounds = CGRectZero;
    toVIV.center = self.touchPoint;
    
    toVC.view.frame = fromVC.view.bounds;
    toVC.view.alpha = 0;
    [containerView addSubview:toVC.view];
    [containerView addSubview:toVIV];

    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        fromVC.view.center = CGPointMake(fromVC.view.center.x - 10 * (self.touchPoint.x - fromVC.view.center.x), fromVC.view.center.y - 10 * (self.touchPoint.y - fromVC.view.center.y));
        fromVC.view.transform = CGAffineTransformMakeScale(10, 10);
        toVIV.frame = fromVC.view.bounds;
    } completion:^(BOOL finished) {
        [toVIV removeFromSuperview];
        toVC.view.alpha = 1;
        [transitionContext completeTransition:YES];
        fromVC.view.transform = CGAffineTransformIdentity;
    }];
}


@end
