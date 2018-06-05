//
//  UIView+Click.m
//  分类添加属性
//
//  Created by 赵玉忠 on 2018/6/6.
//  Copyright © 2018年 赵玉忠. All rights reserved.
//

#import "UIView+Click.h"
#import <objc/runtime.h>

static const void* tagValue = &tagValue;

@interface UIView ()
@property (nonatomic, copy) void(^tapAction)(id);
@end

@implementation UIView (Click)

- (void)addTapBlock:(void(^)(id obj))tapAction{
    self.tapAction = tapAction;
    if (![self gestureRecognizers]) {
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:tap];
    }
}
- (void)tap{
    if (self.tapAction) {
        self.tapAction(self);
    }
}

-(void)setTapAction:(void (^)(id))tapAction{
    objc_setAssociatedObject(self, tagValue, tapAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(void (^)(id))tapAction{
    return objc_getAssociatedObject(self, tagValue);
}


@end
