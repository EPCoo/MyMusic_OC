//
//  searchAlbumInfo.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "AlbumInfo.h"

@implementation AlbumInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"albumID": @"id"};
}
@end
