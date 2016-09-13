//
//  BaseViewModel.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "BaseViewModel.h"
#import "BaseModel.h"
@interface BaseViewModel ()

@property (nonatomic, strong) BaseModel *model;

@end

@implementation BaseViewModel

+(instancetype)vmWithModel:(BaseModel *)model{
    BaseViewModel *vm = [[self alloc]init];
    vm.model = model;
    return vm;
}

@end
