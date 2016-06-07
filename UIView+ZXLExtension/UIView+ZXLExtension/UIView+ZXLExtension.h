//
//  UIView+ZXLExtension.h
//  Baked
//
//  Created by 左学良 on 16/5/13.
//  Copyright © 2016年 左学良. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ZXLExtension)

@property (nonatomic, assign) CGSize zxl_size;
@property (nonatomic, assign) CGFloat zxl_width;
@property (nonatomic, assign) CGFloat zxl_height;
@property (nonatomic, assign) CGFloat zxl_x;
@property (nonatomic, assign) CGFloat zxl_y;
@property (nonatomic, assign) CGFloat zxl_centerX;
@property (nonatomic, assign) CGFloat zxl_centerY;

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)isShowingOnKeyWindow;

//- (CGFloat)x;
//- (void)setX:(CGFloat)x;
/** 在分类中声明@property, 只会生成方法的声明, 不会生成方法的实现和带有_下划线的成员变量*/

+ (instancetype)viewFromXib;
@end
