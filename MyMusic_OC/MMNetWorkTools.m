//
//  MMNetWorkTools.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "MMNetWorkTools.h"

@implementation MMNetWorkTools

#define AppBaseURL @"http://music.163.com/api"
+(instancetype)sharedTools{
    static MMNetWorkTools *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        // 设置超时时长
        config.timeoutIntervalForRequest = 30;
        
        // 请求地址
        NSURL *baseUrl = [NSURL URLWithString:AppBaseURL];
        
        instance = [[self alloc] initWithBaseURL:baseUrl sessionConfiguration:config];
        
        [instance.requestSerializer setValue:@"http://music.163.com" forHTTPHeaderField:@"Referer"];
        [instance.requestSerializer setValue:@"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36" forHTTPHeaderField:@"User-Agent"];
        [instance.requestSerializer setValue:@"appver=2.0.2" forHTTPHeaderField:@"Cookie"];
        
        instance.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
    });
    return instance;
}
@end
