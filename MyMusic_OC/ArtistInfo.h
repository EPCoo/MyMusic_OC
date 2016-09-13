//
//  searchArtistInfo.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseModel.h"

@interface ArtistInfo : BaseModel
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
