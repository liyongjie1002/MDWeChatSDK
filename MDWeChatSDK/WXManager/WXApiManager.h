//
//  WXManager.h
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WXApi.h"

@protocol WXApiManagerDelegate <NSObject>

@optional

- (void)managerDidRecvAuthResponse:(SendAuthResp *)response;

@end

@interface WXApiManager : NSObject<WXApiDelegate>

@property (nonatomic, assign) id<WXApiManagerDelegate> delegate;

+ (instancetype)sharedManager;

@end
