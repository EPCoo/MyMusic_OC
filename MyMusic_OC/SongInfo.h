//
//  searchSongInfo.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseModel.h"
@class ArtistInfo;
@class AlbumInfo;

@interface SongInfo : BaseModel
@property (nonatomic, copy) NSString *songID; //!<歌曲id
@property (nonatomic, copy) NSString *name; //!<歌曲名称
@property (nonatomic, strong) NSArray<ArtistInfo *> *artists; //!<艺术家
@property (nonatomic, strong) NSArray<AlbumInfo *> *albums; //!<专辑信息
@property (nonatomic, assign) int duration; //!<持续时间
@property (nonatomic, assign) int copyrightId; 
@property (nonatomic, assign) int status;
@property (nonatomic, strong) NSArray<ArtistInfo *> *alias;
@property (nonatomic, assign) int rtype;
@property (nonatomic, assign) int ftype;
@property (nonatomic, assign) int mvid; //!<MVid
@property (nonatomic, assign) int fee;
@property (nonatomic, strong) id rUrl; //!<未知

@end
