//
//  searchResultCell.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "searchResultCell.h"

@implementation searchResultCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    // 1. 可重用标示符
    static NSString *ID = @"searchResultCell";
    // 2. tableView查询可重用Cell
    searchResultCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    // 3. 如果没有可重用cell
    if (cell == nil) {
        // 从XIB加载自定义视图
        cell = [[[NSBundle mainBundle] loadNibNamed:@"searchResultCell" owner:nil options:nil] lastObject];
    }
    
    return cell;
}
@end
