//
//  MHDWXAuthApi.m
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "MHDWXAuthApi.h"

static NSString *const kwxAuthBaseUrl = @"https://api.weixin.qq.com";
static NSString *const kwxAuthUrl = @"/sns/userinfo";

@interface MHDWXAuthApi(){
    
    NSString *_openid;
    NSString *_access_token;
    
}
@end

@implementation MHDWXAuthApi

- (instancetype)initWithOpenid:(NSString *)openid
                  access_token:(NSString *)access_token{
    self = [super init];
    if (self) {
        _openid = openid;
        _access_token = access_token;
    }
    return self;
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}

- (NSString *)baseUrl{
    
    return kwxAuthBaseUrl;
}

- (NSString *)requestUrl {
    return kwxAuthUrl;
}

- (id)requestArgument {
    return @{@"openid":_openid,@"access_token":_access_token};
}

@end
