//
//  MMusicTools.h
//  MyMusic_OC
//
//  Created by shun on 16/9/19.
//  Copyright © 2016年 shun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMusicTools : NSObject
+ (NSURL *)getSongMD5_IDWithSongID:(NSString *)songID;
@end
