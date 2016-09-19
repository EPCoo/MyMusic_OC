//
//  searchResultCell.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "searchResultCell.h"
#import "SongInfoVM.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "AlbumInfoVM.h"
#import <SVProgressHUD/SVProgressHUD.h>
#import "MMusicTools.h"
@implementation searchResultCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
-(void)setViewModel:(SongInfoVM *)viewModel {
    _viewModel = viewModel;
    _titleLb.text = [NSString stringWithFormat:@"%@-%@",viewModel.model.name,[viewModel getArtistName]];
    self.backgroundColor = [UIColor brownColor];
    [_albumImg sd_setImageWithURL:[viewModel getalbumImgURL] placeholderImage:[UIImage imageNamed:@"placeholderImage"] options:SDWebImageRetryFailed];
    [_titleLb sizeToFit];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)downloadClick:(id)sender {
    [SVProgressHUD show];
    [AlbumInfoVM getAlbumWithAlbumID:self.viewModel.model.album.albumID success:^(AlbumInfoVM *viewModel) {
        if (viewModel) {
            NSLog(@"%@",[MMusicTools getSongMD5_IDWithSongID:[viewModel getSongIDWithSongID:self.viewModel.model.songID withSoundLevel:SoundLevelHeight]]);
            [SVProgressHUD dismiss];
        }else {
            [SVProgressHUD showErrorWithStatus:@"下载失败！"];
        }
    } resulterror:^(NSError *error) {
        [SVProgressHUD showErrorWithStatus:@"下载失败！"];
    }];
    
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
