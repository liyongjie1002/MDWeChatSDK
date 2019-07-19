//
//  MHDWXRefreshTokenApi.m
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "MHDWXRefreshTokenApi.h"

static NSString *const kfresh_token_base_rul = @"https://api.weixin.qq.com";
static NSString *const kfresh_token_rul = @"/sns/oauth2/refresh_token";

@interface MHDWXRefreshTokenApi(){
    
    NSString *_appid;
    NSString *_refresh_token;
    NSString *_grant_type;
}
@end
@implementation MHDWXRefreshTokenApi

- (instancetype)initWithAppid:(NSString *)appid
                refresh_token:(NSString *)refresh_token
                   grant_type:(NSString *)grant_type{
    self = [super init];
    if (self) {
        _appid = appid;
        _refresh_token = refresh_token;
        _grant_type = grant_type;
    }
    return self;
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}

- (NSString *)baseUrl{
    
    return kfresh_token_base_rul;
}

- (NSString *)requestUrl {
    return kfresh_token_rul;
}

- (id)requestArgument {
    return @{@"appid":_appid,@"refresh_token":_refresh_token,@"grant_type":_grant_type};
}
@end
