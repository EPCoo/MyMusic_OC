//
//  SongInfoVM.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "SongInfoVM.h"
#import "SearchInfo.h"
@implementation SongInfoVM

- (NSString *)getArtistName {
    SearchArtistInfo *artist = [self.model.artists firstObject];
    return artist.name;
}
- (NSURL *)getalbumImgURL {
    SearchArtistInfo *artist = [self.model.artists firstObject];
    return [NSURL URLWithString:artist.img1v1Url];
}


+ (void)searchSongsWithKeyWord:(NSString *)keyword
                   returnLimit:(NSInteger)limit
                        offset:(NSInteger)offset
                    searchType:(SearchSongsType)searchType
                       success:(void (^)(NSArray<SongInfoVM *> *))success
                   resulterror:(void (^)(NSError *))resulterror
{
    
    NSDictionary *paramter = @{@"s":keyword,
                               @"limit":[NSString stringWithFormat:@"%zd",limit],
                               @"sub":@"false",
                               @"type":[NSString stringWithFormat:@"%zd",searchType],
                               @"offset":[NSString stringWithFormat:@"%zd",offset]
                               };
    
    [[MMNetWorkTools sharedTools] POST:@"search/get" parameters:paramter progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *responseObject){
        NSArray *array = responseObject[@"result"][@"songs"];
        NSMutableArray *mArray = [NSMutableArray arrayWithCapacity:array.count];
        for (NSDictionary *dict in array) {
            SearchInfo *model = [[SearchInfo alloc] initWithDict:dict];
            SongInfoVM *viewModel = [self vmWithModel:model];
            [mArray addObject:viewModel];
        }
        success([mArray copy]);
        
    }failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error){
        if (resulterror) {
            resulterror(error);
        }
    }];
}
@end
