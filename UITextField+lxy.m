//
//  UITextField+lxy.m
//  JET
//
//  Created by lxy on 15/11/25.
//  Copyright (c) 2015年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import "UITextField+lxy.h"

@implementation UITextField (lxy)

-(void)setTextFieldLeftPaddingForWidth:(CGFloat)leftWidth
{
    CGRect frame = self.frame;
    frame.size.width = leftWidth;
    UIView *leftview = [[UIView alloc] initWithFrame:frame];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView = leftview;
}

-(void)setTextFieldRightPaddingForWidth:(CGFloat)leftWidth
{
    CGRect frame = self.frame;
    frame.size.width = leftWidth;
    UIView *rightview = [[UIView alloc] initWithFrame:frame];
    self.rightViewMode = UITextFieldViewModeAlways;
    self.rightView = rightview;
}

@end
