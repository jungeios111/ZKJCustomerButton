//
//  ZkjButton.m
//  自定义Button
//
//  Created by ZKJ on 2017/3/2.
//  Copyright © 2017年 ZKJ. All rights reserved.
//

#import "ZkjButton.h"
#import "UIView+Extension.h"

@implementation ZkjButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setUp];
}

- (void)setUp
{
    self.titleLabel.textColor = [UIColor redColor];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:16];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.x = self.width - 25;
    self.imageView.y = 0;
    self.imageView.width = 25;
    self.imageView.height = self.height;
    
    self.titleLabel.x = 0;
    self.titleLabel.y = 0;
    self.titleLabel.width = self.width - 25;
    self.titleLabel.height = self.height;
}

@end
