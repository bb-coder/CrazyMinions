//
//  GameBase_VC.m
//  CrazyMinions
//
//  Created by bihongbo on 9/5/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "GameBase_VC.h"
#import "BHBMagicMoveInvertTransition.h"

@interface GameBase_VC ()<UIViewControllerTransitioningDelegate>

@end

@implementation GameBase_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initDismissBtn];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initImageView];
    
    
    
}
- (void)initImageView{
    self.roleIV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:self.role.imageName]];
    self.roleIV.contentMode = UIViewContentModeScaleAspectFit;
    self.roleIV.frame = CGRectMake((self.view.width - 30) / 2 / 2, 64, (self.view.width - 30) / 2, (self.view.width - 30) / 2 - 50);
    [self.view addSubview:self.roleIV];
    
}

- (void)initDismissBtn{
    UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"exit"] forState:UIControlStateNormal];
    backBtn.frame = CGRectMake(10, 20, 50, 50);
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
}

- (void)back{
    self.transitioningDelegate = self;
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}


-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    BHBMagicMoveInvertTransition * transition = [[BHBMagicMoveInvertTransition alloc]init];
    return transition;
}



@end
