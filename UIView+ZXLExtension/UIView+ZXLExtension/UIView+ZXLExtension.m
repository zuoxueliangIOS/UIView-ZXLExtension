//
//  UIView+ZXLExtension.m
//  Baked
//
//  Created by 左学良 on 16/5/13.
//  Copyright © 2016年 左学良. All rights reserved.
//

#import "UIView+ZXLExtension.h"

@implementation UIView (ZXLExtension)

- (void)setZxl_size:(CGSize)zxl_size
{
    CGRect frame = self.frame;
    frame.size = zxl_size;
    self.frame = frame;
}

- (CGSize)zxl_size
{
    return self.frame.size;
}

- (void)setZxl_width:(CGFloat)zxl_width
{
    CGRect frame = self.frame;
    frame.size.width = zxl_width;
    self.frame = frame;
}

- (void)setZxl_height:(CGFloat)zxl_height
{
    CGRect frame = self.frame;
    frame.size.height = zxl_height;
    self.frame = frame;
}

- (void)setZxl_x:(CGFloat)zxl_x
{
    CGRect frame = self.frame;
    frame.origin.x = zxl_x;
    self.frame = frame;
}

- (void)setZxl_y:(CGFloat)zxl_y
{
    CGRect frame = self.frame;
    frame.origin.y = zxl_y;
    self.frame = frame;
}

- (void)setZxl_centerX:(CGFloat)zxl_centerX
{
    CGPoint center = self.center;
    center.x = zxl_centerX;
    self.center = center;
}

- (void)setZxl_centerY:(CGFloat)zxl_centerY
{
    CGPoint center = self.center;
    center.y = zxl_centerY;
    self.center = center;
}

- (CGFloat)zxl_centerY
{
    return self.center.y;
}

- (CGFloat)zxl_centerX
{
    return self.center.x;
}

- (CGFloat)zxl_width
{
    return self.frame.size.width;
}

- (CGFloat)zxl_height
{
    return self.frame.size.height;
}

- (CGFloat)zxl_x
{
    return self.frame.origin.x;
}

- (CGFloat)zxl_y
{
    return self.frame.origin.y;
}

- (BOOL)isShowingOnKeyWindow
{
    // 主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    // 以主窗口左上角为坐标原点, 计算self的矩形框
    CGRect newFrame = [keyWindow convertRect:self.frame fromView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    // 主窗口的bounds 和 self的矩形框 是否有重叠
    BOOL intersects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && intersects;
}

+ (instancetype)viewFromXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}
@end
