//
//  BHBGameCell.m
//  CrazyMinions
//
//  Created by bihongbo on 9/4/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBGameCell.h"

@interface BHBGameCell ()

@property (nonatomic,strong) UILabel * titleLabel;

@end

@implementation BHBGameCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        self.iconIV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height - 50)];
        self.iconIV.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:self.iconIV];
        
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, self.iconIV.maxY, frame.size.width, 50)];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor grayColor];
        self.titleLabel.font = [UIFont lanTingFontWithSize:15];
        [self.contentView addSubview:self.titleLabel];
        
        self.layer.cornerRadius = 5;
        self.layer.masksToBounds = YES;
        self.layer.borderWidth = 1;
    }
    return self;
}

-(void)setTitle:(NSString *)title{
    _title = [title copy];
    [self.titleLabel setText:_title];
}

-(void)setRole:(BHBRole *)role{
    _role = role;
    [self.iconIV setImage:[UIImage imageNamed:_role.imageName]];
}

@end
