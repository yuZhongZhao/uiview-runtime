//
//  UIView+Click.h
//  分类添加属性
//
//  Created by 赵玉忠 on 2018/6/6.
//  Copyright © 2018年 赵玉忠. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Click)
- (void)addTapBlock:(void(^)(id obj))tapAction;

@end
