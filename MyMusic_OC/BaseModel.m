//
//  BaseModel.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel
/// 打印模型所有属性
MJExtensionLogAllProperties

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self mj_setKeyValues:dict];
    }
    return self;
}
@end
