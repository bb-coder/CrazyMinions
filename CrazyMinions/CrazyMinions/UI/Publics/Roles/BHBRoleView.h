//
//  BHBRoleView.h
//  CrazyMinions
//
//  Created by bihongbo on 8/30/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHBRole.h"

@interface BHBRoleView : UIView

@property (nonatomic, strong) UIImageView * roleIconIV;

@property (nonatomic, strong) BHBRole * role;

- (instancetype)initWithTarget:(id)target selector:(SEL)sel roleType:(BHBRoleType)roleType;

@end

