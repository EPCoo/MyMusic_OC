//
//  albumInfo.m
//  MyMusic_OC
//
//  Created by shun on 16/9/19.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "AlbumInfo.h"

@implementation AlbumSongMusicInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"AlbumSongMusicID" : @"id"};
}
@end

@implementation AlbumSongInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"AlbumSongID" : @"id",
             @"coppyFrom" : @"copyFrom"};
}
@end
@implementation AlbumArtistInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"AlbumArtistID" : @"id"};
}
@end
@implementation AlbumInfo
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [AlbumInfo mj_setupObjectClassInArray:^NSDictionary *{
            return @{
                     @"songs":@"AlbumSongInfo",
                     @"artists":@"AlbumArtistInfo"
                     };
        }];
        [AlbumSongInfo mj_setupObjectClassInArray:^NSDictionary *{
            return @{
                     @"artists":@"AlbumArtistInfo"
                     };
        }];
        [self mj_setKeyValues:dict];
    }
    return self;
}
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"AlbumID" : @"id",
             @"AlbumDescription": @"description"};
}
@end
