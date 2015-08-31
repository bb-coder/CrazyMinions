//
//  BHBRoleView.m
//  CrazyMinions
//
//  Created by bihongbo on 8/30/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBRoleView.h"


@implementation BHBRoleView

- (instancetype)initWithTarget:(id)target selector:(SEL)sel roleType:(BHBRoleType)roleType{
    
    self = [super init];
    if (self) {
        self.roleIconIV = [[UIImageView alloc]init];
        self.roleIconIV.contentMode = UIViewContentModeScaleAspectFill;
        self.roleIconIV.userInteractionEnabled = YES;
        UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:target action:sel];
        [self.roleIconIV addGestureRecognizer:tap];
        [self addSubview:self.roleIconIV];
        BHBRole * role = [[BHBRole alloc]initWithRoleType:roleType];
        self.frame = CGRectMake(0, 0, 64, 64);
        self.role = role;
    }
    return self;
    
}

-(void)setRole:(BHBRole *)role{
    _role = role;
    self.roleIconIV.image = [UIImage imageNamed:role.imageName];
}

-(void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    self.roleIconIV.frame = self.bounds;
}

-(void)setBounds:(CGRect)bounds{
    [super setBounds:bounds];
    self.roleIconIV.frame = self.bounds;

}

@end
