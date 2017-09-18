//
//  ViewController.m
//  UserInterface
//
//  Created by san_xu on 2017/9/18.
//  Copyright © 2017年 onzxgway. All rights reserved.
//

#import "ViewController.h"
#import "UIModel.h"
#import "UIDetailModel.h"
#import "DetailController.h"

@interface ViewController ()
@property (strong,nonatomic)NSArray<UIModel *> *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = self.datas;
}

#pragma mark - Table view data delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DetailController *detailController = [[DetailController alloc] init];
    detailController.dataSource = self.datas[indexPath.row].detailModels;
    [self.navigationController pushViewController:detailController animated:YES];
}

#pragma mark - lazy load 
- (NSArray<UIModel *> *)datas {
    if (!_datas) {
        UIModel *model = [[UIModel alloc] init];
        model.title = @"0918-多控制器";
        
        UIDetailModel *detailModelPF = [[UIDetailModel alloc] init];
        detailModelPF.title = @"项目中的常见文件";
        detailModelPF.method = @"projectFile";
        UIDetailModel *detailModelAPP = [[UIDetailModel alloc] init];
        detailModelAPP.title = @"UIApplication单例";
        detailModelAPP.method = @"application";
        UIDetailModel *detailModelFuc = [[UIDetailModel alloc] init];
        detailModelFuc.title = @"UIApplication作用";
        detailModelFuc.method = @"applicationFuc";
        
        
        model.detailModels = @[detailModelPF,detailModelAPP,detailModelFuc];
        
        _datas = @[model];
    }
    return _datas;
}


@end
