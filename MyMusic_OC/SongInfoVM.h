//
//  SongInfoVM.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseViewModel.h"
#import "SearchInfo.h"
typedef NS_ENUM(NSUInteger, SearchSongsType) {
    SearchSingleSongType = 1,   //!<单曲
    SearchAlbumType = 10,       //!<专辑
    SearchSingerType = 100,     //!<歌手
    SearchSongsListType = 1000, //!<歌单
    SearchUserType = 1002       //!<用户
};

@interface SongInfoVM : BaseViewModel
@property (nonatomic, strong) SearchInfo *model;
- (NSString *)getArtistName;
- (NSURL *)getalbumImgURL;
/**
 *  搜索信息
 *
 *  @param keyword     关键字
 *  @param limit       返回数量
 *  @param offset      分页
 *  @param searchType  搜索类型
 *  @param success     成功回调
 *  @param resulterror 失败
 */
+ (void)searchSongsWithKeyWord:(NSString *)keyword
                   returnLimit:(NSInteger)limit
                        offset:(NSInteger)offset
                    searchType:(SearchSongsType)searchType
                       success:(void (^)(NSArray<SongInfoVM *> *array))success
                   resulterror:(void (^)(NSError *error))resulterror;
@end
