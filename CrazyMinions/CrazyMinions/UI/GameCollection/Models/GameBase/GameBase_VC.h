//
//  GameBase_VC.h
//  CrazyMinions
//
//  Created by bihongbo on 9/5/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BHBRole.h"
#import "GameBase_VC.h"

@interface GameBase_VC : UIViewController

@property (strong, nonatomic) UIImageView *roleIV;

@property (nonatomic, strong) BHBRole * role;

@end
