//
//  ViewController.m
//  CrazyMinions
//
//  Created by bihongbo on 8/30/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "Main_VC.h"
#import "BHBRoleView.h"


@interface Main_VC ()
/** 最开始的那只小黄人 */
@property (weak, nonatomic) IBOutlet BHBRoleView *startV;
/** 格鲁说的话 */
@property (strong,nonatomic) UILabel * titleLbl;
/** 下一步 */
@property (nonatomic, strong) UIButton * nextBtn;

@end

@implementation Main_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addStartImageView];
    [self initTitleAndNextBtn];
}

#pragma mark 添加第一个小黄人
- (void)addStartImageView{
    
    BHBRoleView * startV = [[BHBRoleView alloc]initWithTarget:self selector:@selector(startAction:) roleType:BHBRoleMinions_1];
    startV.center = self.view.center;
    [self.view addSubview:startV];
    self.startV = startV;
    
}

#pragma mark 初始化视图
- (void)initTitleAndNextBtn{
    self.titleLbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, SelfViewWidth, SelfViewHeght * .25)];
    self.titleLbl.center = CGPointMake(self.view.center.x, SelfViewHeght * .35);
    self.titleLbl.text = @"听着，乔治，我们有新任务了!";
    self.titleLbl.font = [UIFont lanTingFontWithSize:15];
    self.titleLbl.textAlignment = NSTextAlignmentCenter;
    self.titleLbl.alpha = 0;
    [self.view addSubview:self.titleLbl];
    
    self.nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.nextBtn.bounds = CGRectMake(0, 0, 100, 100);
    self.nextBtn.center = CGPointMake(self.view.center.x, SelfViewHeght * .65);
    [self.nextBtn setBackgroundImage:[UIImage imageNamed:@"btnback"] forState:UIControlStateNormal];
    [self.nextBtn setBackgroundImage:[UIImage imageNamed:@"btnback"] forState:UIControlStateHighlighted];
    [self.nextBtn addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];

    self.nextBtn.titleLabel.font = [UIFont lanTingFontWithSize:15];
    self.nextBtn.alpha = 0;
    [self.view addSubview:self.nextBtn];
    [self.nextBtn setTitle:@"开始" forState:UIControlStateNormal];
}

#pragma mark 点击小黄人
- (void)startAction:(UITapGestureRecognizer *)tap{
    self.startV.userInteractionEnabled = NO;
    BHBRoleView * gruV = [[BHBRoleView alloc]initWithTarget:nil selector:nil roleType:BHBRoleManGru_2];
    gruV.bounds = CGRectMake(0, 0, 100, 100);
    gruV.center = self.view.center;
    gruV.alpha = 0;
    [self.view addSubview:gruV];
    
    CAKeyframeAnimation * anim = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    anim.values = @[@(0),@(M_PI),@(2 * M_PI)];
    anim.duration = 1;
    [self.nextBtn.layer addAnimation:anim forKey:@""];
    
    [UIView animateWithDuration:1 animations:^{
        gruV.alpha = 1;
        self.titleLbl.alpha = 1;
        self.nextBtn.alpha = 1;
        self.titleLbl.frame = CGRectMake(0, SelfViewHeght * .1, SelfViewWidth, SelfViewHeght * .25);
        self.nextBtn.center = CGPointMake(self.view.center.x, SelfViewHeght * 3/4);
        gruV.center = CGPointMake(self.view.center.x - 50, self.view.center.y - 16);
        self.startV.center = CGPointMake(self.view.center.x + 32, self.view.center.y);
    } completion:^(BOOL finished) {
        
    }];
}

#pragma mark 点击开始按钮
- (void)nextAction:(UIButton *)btn{
    
    [UIView animateWithDuration:.7 animations:^{
        self.view.center = CGPointMake(self.view.center.x - 10 * (self.nextBtn.center.x - self.view.center.x), self.view.center.y - 10 * (self.nextBtn.center.y - self.view.center.y));
        self.view.transform = CGAffineTransformMakeScale(10, 10);
        self.view.alpha = 0;
    } completion:^(BOOL finished) {
        
    }];
    
}

@end
