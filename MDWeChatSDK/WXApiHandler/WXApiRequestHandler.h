//
//  WXApiResponseHandler.h
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WXApi.h"

@interface WXApiRequestHandler : NSObject

+ (BOOL)sendAuthRequestScope:(NSString *)scope
                       State:(NSString *)state;

/**
 * 微信分享
 */
+ (BOOL)sendMessageToWXReqScene:(int)scene
                              Title:(NSString *)title Description:(NSString *)description ThumbImageName:(NSString *)thumbImageName WebpageUrl:(NSString *)webpageUrl;
@end
