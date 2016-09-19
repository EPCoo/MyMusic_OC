//
//  searchSongInfo.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseModel.h"
@interface SearchArtistInfo : BaseModel
@property (nonatomic, copy) NSString *artistID; //!<id
@property (nonatomic, copy) NSString *name; //!<艺术家名字
@property (nonatomic, copy) NSString *picUrl; //!<图片地址
@property (nonatomic, strong) NSArray *alias;
@property (nonatomic, assign) int albumSize; //!<图片大小
@property (nonatomic, assign) int picId; //!<图片id／
@property (nonatomic, copy) NSString *img1v1Url;//!<图片url
@property (nonatomic, copy) NSString *img1v1;
@property (nonatomic, strong) id trans;
@end

@interface SearchAlbumInfo : BaseModel
@property (nonatomic, copy) NSString *albumID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray<SearchArtistInfo *> *artist;
@property (nonatomic, assign) int publishTime; //!<出版时间
@property (nonatomic, assign) int size;
@property (nonatomic, assign) int copyrightId;
@property (nonatomic, assign) int status;
@property (nonatomic, assign) int picId;
@end

@interface SearchInfo : BaseModel
@property (nonatomic, copy) NSString *songID; //!<歌曲id
@property (nonatomic, copy) NSString *name; //!<歌曲名称
@property (nonatomic, strong) NSArray<SearchArtistInfo *> *artists; //!<艺术家
@property (nonatomic, strong) SearchAlbumInfo *album; //!<专辑信息
@property (nonatomic, assign) int duration; //!<持续时间
@property (nonatomic, assign) int copyrightId; 
@property (nonatomic, assign) int status;
@property (nonatomic, strong) NSArray<SearchArtistInfo *> *alias;
@property (nonatomic, assign) int rtype;
@property (nonatomic, assign) int ftype;
@property (nonatomic, assign) int mvid; //!<MVid
@property (nonatomic, assign) int fee;
@property (nonatomic, strong) id rUrl; //!<未知

@end


