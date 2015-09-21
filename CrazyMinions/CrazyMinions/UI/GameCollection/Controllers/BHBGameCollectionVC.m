//
//  BHBGameCollectionVC.m
//  CrazyMinions
//
//  Created by bihongbo on 9/3/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBGameCollectionVC.h"
#import "BHBMagicMoveTransition.h"
#import "BHBGameCell.h"
#import "BHBSortGame_VC.h"
#import "BHBRole.h"

@interface BHBGameCollectionVC ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UIViewControllerTransitioningDelegate>

@property (nonatomic,strong) NSArray * games;

@end

@implementation BHBGameCollectionVC

-(NSArray *)games{
    if (!_games) {
        NSArray * titles = @[@"排序",@"栈、队列、链表",@"枚举",@"搜索",@"图的遍历",@"最短路径",@"树",@"二分图最大匹配"];
        int i = 0;
        NSMutableArray * mar = [NSMutableArray array];
        for (NSString * title in titles) {
            NSDictionary * dict = @{@"title" : title,@"role" : [[BHBRole alloc] initWithRoleType:BHBRoleMinions_1 + i]};
            [mar addObject:dict];
            i ++;
        }
        _games = [NSArray arrayWithArray:mar];
    }
    return _games;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化集合视图
    [self initCollectionView];    
}

- (void)initCollectionView{
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake((self.view.width - 3 * 10) * 0.5, (self.view.width - 3 * 10) * 0.5);
    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 10;
    layout.sectionInset = UIEdgeInsetsMake(20, 10, 10, 10);

    self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor colorWithHex:0x5AB6FC];
    [self.collectionView registerClass:[BHBGameCell class] forCellWithReuseIdentifier:@"cell"];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:self.collectionView];
    
}

#pragma mark -collectionDelegate and Datasource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.games.count;
}

- (BHBGameCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    BHBGameCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    [cell.iconIV setImage:[UIImage imageNamed:[BHBRole roleToImageDict][@(BHBRoleMinions_1 + random()%15)]]];
    cell.title = self.games[indexPath.row][@"title"];
    cell.role = self.games[indexPath.row][@"role"];
    return cell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%@",indexPath);
    BHBSortGame_VC * vc = [[BHBSortGame_VC alloc]init];
    vc.transitioningDelegate = self;
    vc.role = self.games[indexPath.row][@"role"];
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}

-(void)dealloc{
    self.collectionView.delegate = nil;
    self.collectionView.dataSource = nil;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    BHBMagicMoveTransition * transition = [[BHBMagicMoveTransition alloc]init];
    return transition;
}




@end
