//
//  DetailController.m
//  UserInterface
//
//  Created by san_xu on 2017/9/18.
//  Copyright © 2017年 onzxgway. All rights reserved.
//

#import "DetailController.h"
#import "DetailViewController.h"
#import "UIDetailModel.h"

@interface DetailController ()

@end

@implementation DetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Detail";
}

#pragma mark - Table view data delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    UIDetailModel *detailModel = (UIDetailModel *)self.dataSource[indexPath.row];
    detailViewController.method = detailModel.method;
    [self.navigationController pushViewController:detailViewController animated:YES];
}

@end
