//
//  ViewController.m
//  welcomeDemo
//
//  Created by 满脸胡茬的怪蜀黍 on 2017/6/18.
//  Copyright © 2017年 PuChin·chen. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+wecomeLabel.h"
#import "Masonry.h"

#define kEPDefaultSecondaryBoldFont [UIFont fontWithName:@"Lato-Bold" size:28]
#define kEPColorDefaultSecondaryTextBlackColor [UIColor colorWithRed:0  green:0  blue:0 alpha:0.54]
#define kScreenWidht ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define kScreenRatio ([UIScreen mainScreen].bounds.size.width / 414)

@interface ViewController ()

@property (nonatomic, strong) UILabel *welcomeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.204  green:0.659  blue:0.325 alpha:1];
    
    UILabel *label = [UILabel ep_labelwithKindFontSize:kEPDefaultSecondaryBoldFont Color:kEPColorDefaultSecondaryTextBlackColor
        textAlignment:NSTextAlignmentCenter];
    _welcomeLabel = label;
    [self.view addSubview:_welcomeLabel];
    [label mas_makeConstraints:^(MASConstraintMaker *make){
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.top.equalTo(self.view.mas_top).offset(40 * kScreenRatio);
        make.width.equalTo(@(280 * kScreenRatio));
        make.height.equalTo(@(100 * kScreenRatio));
    }];
    _welcomeLabel.text = @"欢迎界面";
    //使用 NSMutableAttributedString 实现富文本
    
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] initWithString:@"欢迎界面"];
    [attributedStr addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Lato-Bold" size:25] range:NSMakeRange(0, 2)];
    [attributedStr addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(2, 2)];
    _welcomeLabel.attributedText = attributedStr;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
