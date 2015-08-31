//
//  BHBRole.h
//  CrazyMinions
//
//  Created by bihongbo on 8/30/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import <Foundation/Foundation.h>

//角色类型
typedef enum : NSUInteger {
    /** 大叔格鲁_得瑟 */
    BHBRoleManGru_1,
    /** 大叔格鲁_悄悄话 */
    BHBRoleManGru_2,
    /** 小萝莉_安格尼丝_蹦跳大笑 */
    BHBRoleManAgnes_1,
    /** 小萝莉_安格尼丝_睡觉 */
    BHBRoleManAgnes_2,
    /** 小萝莉_安格尼丝_独角兽 */
    BHBRoleManAgnes_3,
    /** 小萝莉_安格尼丝_伤心 */
    BHBRoleManAgnes_4,
    /** 小女孩_艾迪斯 */
    BHBRoleManEdith_1,
    /** 大姐_马格 */
    BHBRoleManMargo_1,
    /** 小黄人_Hi */
    BHBRoleMinions_1,
    /** 小黄人_吐舌头 */
    BHBRoleMinions_2,
    /** 小黄人_生气 */
    BHBRoleMinions_3,
    /** 小黄人_ */
    BHBRoleMinions_4,
    /** 小黄人_ */
    BHBRoleMinions_5,
    /** 小黄人_ */
    BHBRoleMinions_6,
    /** 小黄人_ */
    BHBRoleMinions_7,
    /** 小黄人_ */
    BHBRoleMinions_8,
    /** 小黄人_ */
    BHBRoleMinions_9,
    /** 小黄人_ */
    BHBRoleMinions_10,
    /** 小黄人_ */
    BHBRoleMinions_11,
    /** 小黄人_ */
    BHBRoleMinions_12,
    /** 小黄人_ */
    BHBRoleMinions_13,
    /** 小黄人_ */
    BHBRoleMinions_14,
    /** 小黄人_ */
    BHBRoleMinions_15,
    /** 小黄人_ */
    BHBRoleMinions_16,
    /** 小黄人_ */
    BHBRoleMinions_17,
    /** 小黄人_ */
    BHBRoleMinions_18,
    /** 小黄人_ */
    BHBRoleMinions_19,
    /** 小黄人_ */
    BHBRoleMinions_20,
    /** 恶魔小黄人_ */
    BHBRoleMinions_Evil_1,
    /** 恶魔小黄人_ */
    BHBRoleMinions_Evil_2,
    /** 恶魔小黄人_ */
    BHBRoleMinions_Evil_3,
    /** 恶魔小黄人_ */
    BHBRoleMinions_Evil_4,
    
} BHBRoleType;

@interface BHBRole : NSObject

/** 角色的名字 */
@property (nonatomic, copy) NSString * name;
/** 图片名 */
@property (nonatomic, copy) NSString * imageName;
/** 角色类型 */
@property (nonatomic, assign) BHBRoleType roleType;

-(instancetype)initWithRoleType:(BHBRoleType)roleType;

@end
