//
//  ZAFERNbridgTool.m
//  Runner
//
//  Created by liuwei on 2021/9/14.
//  Copyright © 2021 The Chromium Authors. All rights reserved.
//

#import "ZAFENativebridgTool.h"
@interface ZAFENativebridgTool()

@end

@implementation ZAFENativebridgTool

- (instancetype)initZAFENativebridgTool{
    self = [super init];
    if (self) {
        
        
    }
    return self;
}

/// 复制功能
/// @param string 需要复制字符串
/// @param success 成功回调
/// @param failure 失败回调
- (void)copySting:(NSString*)string Success:(void(^)(UIPasteboard *Pasteboard,  NSString *successStr))success Failure:(void(^)(UIPasteboard *Pasteboard,  NSString *errorStr))failure{
    UIPasteboard *pasteBoard = [UIPasteboard generalPasteboard];
    if (string.length > 0) {
        pasteBoard.string = string;
        if (success) {
            success(pasteBoard,@"复制成功");
        }
        
    }else{
        if (failure) {
            failure(pasteBoard,@"入参错误");
        }
    }
}

/// 打开设置页面
/// @param success 成功回调
/// @param failure 失败回调
-(void)openSettingSuccess:(void(^)(NSString *successStr))success Failure:(void(^)(NSString *errorStr))failure{
    NSURL * url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
         NSURL*url = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
         [[UIApplication sharedApplication] openURL:url];
        if (success) {
            success(@"跳转成功");
        }
    }else{
        if (failure) {
            failure(@"跳转失败");
        }
    }
}


/// 判断是否打开推送
- (BOOL)isUserNotification{
    UIUserNotificationSettings *setting = [[UIApplication sharedApplication] currentUserNotificationSettings];
    return  (UIUserNotificationTypeNone == setting.types) ? NO : YES;
}


@end
