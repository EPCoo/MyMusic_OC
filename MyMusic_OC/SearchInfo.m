//
//  searchSongInfo.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "SearchInfo.h"

@implementation SearchArtistInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"artistID": @"id"};
}

@end

@implementation SearchAlbumInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"albumID": @"id"};
}
@end

@implementation SearchInfo
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [SearchInfo mj_setupObjectClassInArray:^NSDictionary *{
            return @{
                     @"artists":@"SearchArtistInfo",
                     @"alias":@"SearchArtistInfo"
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
