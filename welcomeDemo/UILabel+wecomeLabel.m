//
//  UILabel+wecomeLabel.m
//  welcomeDemo
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/18.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "UILabel+wecomeLabel.h"

@implementation UILabel (wecomeLabel)

+ (UILabel *)ep_labelwithKindFontSize:(UIFont *)font Color:(UIColor *)color textAlignment:(NSTextAlignment)textAlignment {
    
    UILabel *label = [[UILabel alloc] init];
    label.font = font;
    label.textColor = color;
    label.textAlignment = textAlignment;
    label.numberOfLines = 0;
    
    return label;
}

@end
