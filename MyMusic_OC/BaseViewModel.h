//
//  BaseViewModel.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BaseModel;
@interface BaseViewModel : NSObject
+(instancetype)vmWithModel:(BaseModel *)model;
@end
