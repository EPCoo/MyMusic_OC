//
//  AlbumInfoVM.m
//  MyMusic_OC
//
//  Created by shun on 16/9/19.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "AlbumInfoVM.h"

@implementation AlbumInfoVM
- (NSString *)getSongIDWithSongID:(NSString *)songID withSoundLevel:(SoundLevelType)soundLevelType{
    for (AlbumSongInfo *song in self.model.songs) {
        if ([song.AlbumSongID isEqualToString:songID]) {
            switch (soundLevelType) {
                case SoundLevelHeight:
                    return song.hMusic.dfsId;
                    break;
                case SoundLevelMiddle:
                    return song.mMusic.dfsId;
                    break;
                case SoundLevelLow:
                    return song.lMusic.dfsId;
                    break;
                default:
                    break;
            }
            break;
        }
    }
    return nil;
}
+ (void)getAlbumWithAlbumID:(NSString *)albumID success:(void(^)(AlbumInfoVM *viewModel))success resulterror:(void (^)(NSError *))resulterror{
    
    NSString *urlStr = [NSString stringWithFormat:@"album/%@",albumID];
    [[MMNetWorkTools sharedTools] GET:urlStr parameters:nil progress:NULL success:^(NSURLSessionDataTask * _Nonnull task, NSDictionary *responseObject) {
        if ([responseObject isKindOfClass:[NSDictionary class]]) {
            AlbumInfo *model = [[AlbumInfo alloc] initWithDict:responseObject[@"album"]];
            AlbumInfoVM *viewModel = [self vmWithModel:model];
            success(viewModel);

        } else {
            resulterror([NSError alloc]);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        resulterror(error);
    }];
}
@end
