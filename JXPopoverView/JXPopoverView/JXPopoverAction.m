//
//  JXPopoverAction.m
//  Popover
//
//  Created by mac on 17/2/23.
//  Copyright © 2017年 lifution. All rights reserved.
//

#import "JXPopoverAction.h"

@interface JXPopoverAction ()

@property (nonatomic, strong, readwrite) UIImage *image; ///< 图标
@property (nonatomic, copy, readwrite) NSString *title; ///< 标题
@property (nonatomic, copy, readwrite) void(^handler)(JXPopoverAction *action); ///< 选择回调

@end

@implementation JXPopoverAction

+ (instancetype)actionWithTitle:(NSString *)title handler:(void (^)(JXPopoverAction *action))handler {
    return [self actionWithImage:nil title:title handler:handler];
}

+ (instancetype)actionWithImage:(UIImage *)image title:(NSString *)title handler:(void (^)(JXPopoverAction *action))handler {
    JXPopoverAction *action = [[self alloc] init];
    action.image = image;
    action.title = title ? : @"";
    action.handler = handler ? : NULL;
    
    return action;
}



@end
