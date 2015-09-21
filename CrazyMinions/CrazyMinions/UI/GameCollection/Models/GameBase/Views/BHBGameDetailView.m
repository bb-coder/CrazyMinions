//
//  BHBGameDetailView.m
//  CrazyMinions
//
//  Created by bihongbo on 9/16/15.
//  Copyright (c) 2015 bihongbo. All rights reserved.
//

#import "BHBGameDetailView.h"

@interface BHBGameDetailView()

@property (nonatomic,assign) CGSize realSize;

@end

@implementation BHBGameDetailView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.titleRange = NSRangeFromString(@"(0,0)");
    }
    return self;
}

- (void)setTitleRange:(NSRange)titleRange{
    _titleRange = titleRange;
    if(![self.text isEmpty])
    [self setText:self.text];
}

-(void)setText:(NSString *)text{
    self.editable = NO;
    NSMutableParagraphStyle * ps = [[NSMutableParagraphStyle alloc]init];
    ps.alignment = NSTextAlignmentLeft;
    ps.lineSpacing = 5;
    ps.lineBreakMode = NSLineBreakByCharWrapping;
    ps.firstLineHeadIndent = 28;
    UIFont * font = [UIFont lanTingFontWithSize:14];
    //    NSTextAttachment * attachment = [[NSTextAttachment alloc]init];
    //    attachment.image = [UIImage imageNamed:@"\ue404"];
    NSMutableAttributedString * contentText = [[NSMutableAttributedString alloc]initWithString:text attributes:@{NSForegroundColorAttributeName:[UIColor colorWithHex:0x000029],NSFontAttributeName:font,NSParagraphStyleAttributeName:ps,NSKernAttributeName:@3}];
    [contentText addAttribute:NSFontAttributeName value:[UIFont lanTingFontWithSize:28] range:self.titleRange];
    CGRect realRect = [contentText boundingRectWithSize:CGSizeMake(self.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading context:nil];
    self.realSize = realRect.size;
    [super setAttributedText:contentText];
    
}

@end
