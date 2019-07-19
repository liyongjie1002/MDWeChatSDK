//
//  MHDWXRefreshTokenApi.h
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "MDRequest.h"

@interface MHDWXRefreshTokenApi : MDRequest

- (instancetype)initWithAppid:(NSString *)appid
                       refresh_token:(NSString *)refresh_token
                   grant_type:(NSString *)grant_type;

@end
