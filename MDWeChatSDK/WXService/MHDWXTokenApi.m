//
//  MHDWXTokenApi.m
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "MHDWXTokenApi.h"

static NSString *const request_url = @"https://api.weixin.qq.com";

static NSString *const token_url = @"/sns/oauth2/access_token";

@interface MHDWXTokenApi()
{
    NSString *_appid;
    NSString *_secret;
    NSString *_code;
    NSString *_grant_type;
}

@end
@implementation MHDWXTokenApi

- (instancetype)initWithAppid:(NSString *)appid
                       secret:(NSString *)secret
                         code:(NSString *)code
                   grant_type:(NSString *)grant_type{
    self = [super init];
    if (self) {
        _appid = appid;
        _secret = secret;
        _code = code;
        _grant_type = grant_type;
    }
    return self;
}
- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}

- (NSString *)baseUrl{
    
    return request_url;
}

- (NSString *)requestUrl {
    return token_url;
}

- (id)requestArgument {
    return @{@"appid":_appid,@"secret":_secret,@"code":_code,@"grant_type":_grant_type};
}


@end
