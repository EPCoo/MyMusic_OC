//
//  searchAlbumInfo.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseModel.h"
@class ArtistInfo;
@interface AlbumInfo : BaseModel
@property (nonatomic, copy) NSString *albumID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray<ArtistInfo *> *artist;
@property (nonatomic, assign) int publishTime; //!<出版时间
@property (nonatomic, assign) int size;
@property (nonatomic, assign) int copyrightId;
@property (nonatomic, assign) int status;
@property (nonatomic, assign) int picId;
@end
