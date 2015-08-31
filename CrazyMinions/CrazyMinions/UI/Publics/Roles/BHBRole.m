//
//  BHBRole.m
//  CrazyMinions
//
//  Created by bihongbo on 8/30/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBRole.h"

@implementation BHBRole

+ (NSDictionary *)roleToImageDict{
    return @{
             
             @(BHBRoleManGru_1) : @"gru-icon",
             @(BHBRoleManGru_2) : @"gru-icon-2",
             @(BHBRoleManAgnes_1) : @"agnes-overjoyed-icon",
             @(BHBRoleManAgnes_2) : @"agnes-sleeping-icon",
             @(BHBRoleManAgnes_3) : @"happy-agnes-icon",
             @(BHBRoleManAgnes_4) : @"Sad-Agnes-Icon",
             @(BHBRoleManEdith_1) : @"Edith-despicable-me-2-icon",
             @(BHBRoleManMargo_1) : @"Margo-dispicable-me-2-icon",
             @(BHBRoleMinions_1) : @"despicable-me-2-Minion-icon-4",
             @(BHBRoleMinions_2) : @"despicable-me-2-Minion-icon-5",
             @(BHBRoleMinions_3) : @"Angry-Minion-icon",
             @(BHBRoleMinions_4) : @"Curious-Minion-Icon-2",
             @(BHBRoleMinions_5) : @"Curious-Minion-Icon",
             @(BHBRoleMinions_6) : @"Dancing-minion-icon",
             @(BHBRoleMinions_7) : @"despicable-me-2-Minion-icon-1",
             @(BHBRoleMinions_8) : @"despicable-me-2-Minion-icon-2",
             @(BHBRoleMinions_9) : @"despicable-me-2-Minion-icon-3",
             @(BHBRoleMinions_10) : @"despicable-me-2-Minion-icon-6",
             @(BHBRoleMinions_11) : @"despicable-me-2-Minion-icon-7",
             @(BHBRoleMinions_12) : @"despicable-me-2-Minion-icon-8",
             @(BHBRoleMinions_13) : @"girl-minion-icon",
             @(BHBRoleMinions_14) : @"Happy-Minion-Icon",
             @(BHBRoleMinions_15) : @"kungfu-Minion",
             @(BHBRoleMinions_16) : @"Minionicon",
             @(BHBRoleMinions_17) : @"Minion-playing-golf-icon",
             @(BHBRoleMinions_18) : @"Minion-reading-icon",
             @(BHBRoleMinions_19) : @"Shy-Minion-icon",
             @(BHBRoleMinions_20) : @"superman-minion-icon",
             @(BHBRoleMinions_Evil_1) : @"evil-minion-icon-2",
             @(BHBRoleMinions_Evil_2) : @"Evil-Minion-Icon-3",
             @(BHBRoleMinions_Evil_3) : @"Evil-Minion-Icon-4",
             @(BHBRoleMinions_Evil_4) : @"evil-minion-icon"
             };
}

-(NSString *)imageName{
    return [BHBRole roleToImageDict][@(self.roleType)];
}

-(instancetype)initWithRoleType:(BHBRoleType)roleType;
{
    self = [super init];
    if (self) {
        self.roleType = roleType;
    }
    return self;
}


@end
