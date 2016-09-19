//
//  MMusicTools.m
//  MyMusic_OC
//
//  Created by shun on 16/9/19.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "MMusicTools.h"
#import <CommonCrypto/CommonDigest.h>
@implementation MMusicTools
+ (NSURL *)getSongMD5_IDWithSongID:(NSString *)songID {
    char byte1[] = "3go8&$8*3*3h0k(2)2";
    
    NSString *TempString = songID;
    const char *s = [TempString UTF8String];
    char byte2[50]={"1"};
    // 获取到 char数组
    strcpy(byte2,s);
    
    int byte1_len = sizeof(byte1)-1;
    int byte2_len = (int)TempString.length; // 实际长度
    
    for (int i = 0; i < byte2_len; i++) {
        byte2[i] = byte2[i] ^ byte1[i % byte1_len];
    }
    // md5加密
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(byte2, byte2_len, digest);
    // base64输出
    const char *listdigest = (const char*)(char*)digest;
    NSData *plainData = [NSData dataWithBytes:digest length:strlen(listdigest)];
    NSString *base64String = [plainData base64EncodedStringWithOptions:0];
    
    NSString *songMD5Str = [base64String stringByReplacingOccurrencesOfString:@"/" withString:@"_"];
    songMD5Str = [songMD5Str stringByReplacingOccurrencesOfString:@"+" withString:@"-"];
    
    return [NSURL URLWithString:[NSString stringWithFormat:@"http://m1.music.126.net/%@/%@.mp3",songMD5Str,TempString]];
}
@end
