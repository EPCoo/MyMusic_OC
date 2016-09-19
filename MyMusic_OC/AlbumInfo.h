//
//  albumInfo.h
//  MyMusic_OC
//
//  Created by shun on 16/9/19.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseModel.h"
@class AlbumArtistInfo;
@class AlbumInfo;

@interface AlbumSongMusicInfo : BaseModel
@property (nonatomic, copy) NSString *sr;
@property (nonatomic, copy) NSString *volumeDelta;
@property (nonatomic, copy) NSString *bitrate;
@property (nonatomic, copy) NSString *dfsId;
@property (nonatomic, copy) NSString *playTime;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *AlbumSongMusicID;
@property (nonatomic, copy) NSString *size;
@property (nonatomic, copy) NSString *extension;
@end

@interface AlbumSongInfo : BaseModel

@property (nonatomic, assign) BOOL starred;
@property (nonatomic, copy) NSString *popularity;
@property (nonatomic, copy) NSString *starredNum;
@property (nonatomic, copy) NSString *playedNum;
@property (nonatomic, copy) NSString *dayPlays;
@property (nonatomic, copy) NSString *hearTime;
@property (nonatomic, copy) NSString *mp3Url;
@property (nonatomic, copy) NSString *rtUrls;
@property (nonatomic, strong) NSArray<AlbumArtistInfo *> *artists;
@property (nonatomic, copy) NSString *ringtone;
@property (nonatomic, copy) NSString *disc;
@property (nonatomic, copy) NSString *no;
@property (nonatomic, copy) NSString *audition;
@property (nonatomic, copy) NSString *position;
@property (nonatomic, copy) NSString *duration;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *crbt;
@property (nonatomic, strong) AlbumSongMusicInfo *bMusic;
@property (nonatomic, copy) NSString *rtUrl;
@property (nonatomic, copy) NSString *commentThreadId;
@property (nonatomic, strong) id alias;
@property (nonatomic, strong) AlbumSongMusicInfo *hMusic;
@property (nonatomic, strong) AlbumSongMusicInfo *mMusic;
@property (nonatomic, strong) AlbumSongMusicInfo *lMusic;
@property (nonatomic, copy) NSString *fee;
@property (nonatomic, strong) AlbumInfo *album;
@property (nonatomic, copy) NSString *mvid;
@property (nonatomic, copy) NSString *ftype;
@property (nonatomic, copy) NSString *rtype;
@property (nonatomic, copy) NSString *rurl;
@property (nonatomic, copy) NSString *coppyFrom; //!<copyFrome
@property (nonatomic, copy) NSString *copyrightId;
@property (nonatomic, copy) NSString *score;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *AlbumSongID; //!<id
@end

@interface AlbumArtistInfo :BaseModel
@property (nonatomic, copy) NSString *img1v1Id;
@property (nonatomic, copy) NSString *musicSize;
@property (nonatomic, strong) id alias;
@property (nonatomic, copy) NSString *briefDesc;
@property (nonatomic, copy) NSString *picUrl;
@property (nonatomic, copy) NSString *albumSize;
@property (nonatomic, copy) NSString *img1v1Url;
@property (nonatomic, copy) NSString *trans;
@property (nonatomic, copy) NSString *picId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *AlbumArtistID;
@end

@interface AlbumInfoInfo :BaseModel
@property (nonatomic ,copy) NSString *latestLikedUsers;
@property (nonatomic ,copy) NSString *liked;
@property (nonatomic ,copy) NSString *comments;
@property (nonatomic ,copy) NSString *resourceType;
@property (nonatomic ,copy) NSString *resourceId;
@property (nonatomic ,copy) NSString *threadId;
@property (nonatomic ,copy) NSString *commentCount;
@property (nonatomic ,copy) NSString *shareCount;
@property (nonatomic ,copy) NSString *likedCount;
@end

@interface AlbumInfo : BaseModel
@property (nonatomic ,strong) NSArray<AlbumSongInfo *> *songs;
@property (nonatomic ,assign) BOOL paid;
@property (nonatomic ,assign) BOOL onSale;
@property (nonatomic ,strong) id alias;
@property (nonatomic ,copy) NSString *tags;
@property (nonatomic ,assign) NSInteger status;
@property (nonatomic ,copy) NSString *AlbumDescription; //!<description
@property (nonatomic ,copy) NSString *subType;
@property (nonatomic ,assign) NSInteger pic;
@property (nonatomic ,copy) NSString *commentThreadId;
@property (nonatomic ,strong) NSArray<AlbumArtistInfo *> *artists;
@property (nonatomic ,copy) NSString *briefDesc;
@property (nonatomic ,copy) NSString *picUrl;
@property (nonatomic ,strong) AlbumArtistInfo *artist;
@property (nonatomic ,copy) NSString *blurPicUrl;
@property (nonatomic ,copy) NSString *companyId;
@property (nonatomic ,assign) NSInteger publishTime;
@property (nonatomic ,copy) NSString *company;
@property (nonatomic ,copy) NSString *copyrightId;
@property (nonatomic ,copy) NSString *picId;
@property (nonatomic ,copy) NSString *AlbumID; //!<id
@property (nonatomic ,copy) NSString *type;
@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,assign) NSInteger size;
@property (nonatomic, strong) AlbumInfoInfo *info;

- (instancetype)initWithDict:(NSDictionary *)dict;
@end
