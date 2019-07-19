//
//  MHDWXAuthApi.h
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "MDRequest.h"

@interface MHDWXAuthApi : MDRequest

- (instancetype)initWithOpenid:(NSString *)openid
                access_token:(NSString *)access_token;

@end
