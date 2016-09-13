//
//  ViewController.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "ViewController.h"
#import "searchResultCell.h"
#import "SongInfoVM.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchBtn;
@property (weak, nonatomic) IBOutlet UITableView *searchResultsTableView;
@property (nonatomic, strong) NSArray<SongInfoVM *> *songsArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareTableView];
}

- (IBAction)searchBtnclick:(id)sender {
    NSLog(@"%@",self.searchTextField.text);
    [SongInfoVM searchSongsWithKeyWord:self.searchTextField.text returnLimit:10 offset:0 searchType:SearchSingleSongType success:^(NSArray<SongInfoVM *> *array){
        if (array.count > 0) {
            self.songsArray = [array mutableCopy];
            [self.searchResultsTableView reloadData];
        }
    } resulterror:^(NSError *error) {
        NSLog(@"%@",error.domain);
    }];
    
}

- (void)prepareTableView{
    self.searchResultsTableView.delegate = self;
    self.searchResultsTableView.dataSource = self;
    self.searchResultsTableView.backgroundColor = [UIColor clearColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.songsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    searchResultCell * cell = [searchResultCell cellWithTableView:tableView];
    SongInfoVM *viewModel = self.songsArray[indexPath.row];
    cell.titleLb.text = [NSString stringWithFormat:@"%@-%@",viewModel.model.name,[viewModel getArtistName]];
    cell.backgroundColor = [UIColor brownColor];
    [cell.albumImg sd_setImageWithURL:[viewModel getalbumImgURL] placeholderImage:[UIImage imageNamed:@"placeholderImage"] options:SDWebImageRetryFailed];
    [cell.titleLb sizeToFit];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    // 选中后立即取消选中效果
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
