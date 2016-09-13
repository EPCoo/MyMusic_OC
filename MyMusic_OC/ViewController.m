//
//  ViewController.m
//  MyMusic_OC
//
//  Created by shun on 16/9/13.
//  Copyright © 2016年 shun. All rights reserved.
//

#import "ViewController.h"
#import "searchResultCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchBtn;
@property (weak, nonatomic) IBOutlet UITableView *searchResultsTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self prepareTableView];
}
- (void)prepareTableView{
    self.searchResultsTableView.delegate = self;
    self.searchResultsTableView.dataSource = self;
    // 背景颜色
    self.searchResultsTableView.backgroundColor = [UIColor whiteColor];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    searchResultCell * pastRecordsCell = [searchResultCell cellWithTableView:tableView];

    pastRecordsCell.titleLb.text = @"歌曲名字";
    return pastRecordsCell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    // 选中后立即取消选中效果
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
