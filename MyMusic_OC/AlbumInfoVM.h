//
//  AlbumInfoVM.h
//  MyMusic_OC
//
//  Created by shun on 16/9/19.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseViewModel.h"
#import "AlbumInfo.h"

typedef NS_ENUM(NSUInteger, SoundLevelType) {
    SoundLevelB,
    SoundLevelHeight,
    SoundLevelMiddle,
    SoundLevelLow
};

@interface AlbumInfoVM : BaseViewModel
@property (nonatomic, strong) AlbumInfo *model;
// 获取歌曲id
- (NSString *)getSongIDWithSongID:(NSString *)songID withSoundLevel:(SoundLevelType)soundLevelType;
/// 获取专辑音乐列表
+ (void)getAlbumWithAlbumID:(NSString *)albumID success:(void(^)(AlbumInfoVM *viewModel))success resulterror:(void (^)(NSError *))resulterror;
@end
