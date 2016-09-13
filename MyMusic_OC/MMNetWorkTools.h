//
//  MMNetWorkTools.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface MMNetWorkTools : AFHTTPSessionManager
+(instancetype)sharedTools;
@end
