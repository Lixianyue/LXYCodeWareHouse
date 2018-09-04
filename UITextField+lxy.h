//
//  UITextField+lxy.h
//  JET
//
//  Created by lxy on 15/11/25.
//  Copyright (c) 2015年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (lxy)
/**
 * 当TextField是直边的时候 为了防止文字紧贴着左边框  给左边框设置边距
 */
-(void)setTextFieldLeftPaddingForWidth:(CGFloat)leftWidth;
-(void)setTextFieldRightPaddingForWidth:(CGFloat)leftWidth;
@end
