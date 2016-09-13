//
//  searchSongInfo.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "SongInfo.h"

@implementation SongInfo
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [SongInfo mj_setupObjectClassInArray:^NSDictionary *{
            return @{
                     @"artists":@"ArtistInfo",
                     @"albums":@"AlbumInfo",
                     @"alias":@"ArtistInfo"
                     };
        }];
        [self mj_setKeyValues:dict];
    }
    return self;
}
/// 替换 key 名字
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"songID": @"id"};
}

@end
