//
//  searchResultCell.h
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SongInfoVM;
@interface searchResultCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLb;
@property (weak, nonatomic) IBOutlet UIButton *downloadBtn;
@property (weak, nonatomic) IBOutlet UIImageView *albumImg;
@property (nonatomic, strong) SongInfoVM *viewModel;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
