//
//  BHBSortGame_VC.m
//  CrazyMinions
//
//  Created by bihongbo on 9/4/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBSortGame_VC.h"
#import "BHBGameDetailView.h"
//#import "BHBBarrelSort.h"
//#import "BHBBubbleSort.h"



@interface BHBSortGame_VC ()

@property (nonatomic,strong) BHBGameDetailView * tv;

@end

@implementation BHBSortGame_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tv = [[BHBGameDetailView alloc]initWithFrame:CGRectMake(0, self.roleIV.maxY + 5, self.view.width, self.view.height - self.roleIV.maxY - 5)];
    self.tv.titleRange = NSRangeFromString(@"(0,2)");
    self.tv.text = @"排序算法在算法家族中是最基层的成员，它的目的是把无序混乱的数字或者字母排序成有序，基本的排序算法有桶排序，希尔排序，冒泡排序，快速排序等！\ue404";
    [self.view addSubview:self.tv];
    
    
    UIButton * nextBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    nextBtn.frame = CGRectMake(25, self.tv.realSize.height + 20, self.view.width - 50, 50);
    [nextBtn setTitle:@"show" forState:UIControlStateNormal];
    [nextBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [nextBtn setBackgroundColor:[UIColor colorWithHex:0x5AB6FC]];
    nextBtn.layer.cornerRadius = 10;
    nextBtn.layer.masksToBounds = YES;
    [self.tv addSubview:nextBtn];
    
    
}



@end
