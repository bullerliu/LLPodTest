//
//  ZAFERNbridgTool.h
//  Runner
//
//  Created by liuwei on 2021/9/14.
//  Copyright © 2021 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ZAFENativebridgTool : NSObject

/// 实例化
- (instancetype)initZAFENativebridgTool;


/// 复制功能
/// @param string 需要复制字符串
/// @param success 成功回调
/// @param failure 失败回调
- (void)copySting:(NSString*)string
          Success:(void(^)(UIPasteboard *Pasteboard,  NSString *successStr))success
          Failure:(void(^)(UIPasteboard *Pasteboard,  NSString *errorStr))failure;


/// 打开设置页面
/// @param success 成功回调
/// @param failure 失败回调
-(void)openSettingSuccess:(void(^)(NSString *successStr))success
                  Failure:(void(^)(NSString *errorStr))failure;


/// 判断是否打开推送
- (BOOL)isUserNotification;


@end

NS_ASSUME_NONNULL_END
