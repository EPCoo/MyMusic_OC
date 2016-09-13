//
//  searchArtistInfo.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "ArtistInfo.h"

@implementation ArtistInfo
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"artistID": @"id"};
}

@end
