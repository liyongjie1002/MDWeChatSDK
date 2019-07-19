//
//  WXApiResponseHandler.m
//  Muheda
//
//  Created by 于朝盼 on 2018/4/20.
//  Copyright © 2018年 于朝盼. All rights reserved.
//

#import "WXApiRequestHandler.h"
#import "WXApiManager.h"

@implementation WXApiRequestHandler

+ (BOOL)sendAuthRequestScope:(NSString *)scope
                       State:(NSString *)state
{
    SendAuthReq* req = [[SendAuthReq alloc] init];
    req.scope = scope; // @"post_timeline,sns"
    req.state = state;
    return [WXApi sendReq:req];
}



+ (BOOL)sendAuthRequestScope:(NSString *)scope
                       State:(NSString *)state
                      OpenID:(NSString *)openID
            InViewController:(UIViewController *)viewController {
    SendAuthReq* req = [[SendAuthReq alloc] init];
    req.scope = scope; // @"post_timeline,sns"
    req.state = state;
    req.openID = openID;
//    [WXApi sendReq:req];
    
    
    return [WXApi sendAuthReq:req
               viewController:viewController
                     delegate:[WXApiManager sharedManager]];
}

+ (BOOL)sendMessageToWXReqScene:(int)scene
                              Title:(NSString *)title Description:(NSString *)description ThumbImageName:(NSString *)thumbImageName WebpageUrl:(NSString *)webpageUrl{
    //创建发送对象实例
    SendMessageToWXReq *sendReq = [[SendMessageToWXReq alloc] init];
    sendReq.bText = NO;//不使用文本信息
    
    // 分享到微信
    sendReq.scene = scene;
    //创建分享内容对象
    WXMediaMessage *urlMessage = [WXMediaMessage message];
    urlMessage.title = title;//分享标题
    urlMessage.description = description;//
    [urlMessage setThumbImage:[UIImage imageNamed:thumbImageName]];//分享图片,使用SDK的setThumbImage方法可压缩图片大小
    //创建多媒体对象
    WXWebpageObject *webObj = [WXWebpageObject object];
    webObj.webpageUrl = webpageUrl;//分享链接
    
    //完成发送对象实例
    urlMessage.mediaObject = webObj;
    sendReq.message = urlMessage;
    
    //发送分享信息
    return [WXApi sendReq:sendReq];
    
}
@end
