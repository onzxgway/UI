//
//  BaseTableViewController.h
//  UserInterface
//
//  Created by san_xu on 2017/9/18.
//  Copyright © 2017年 onzxgway. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UIModel;

@interface BaseTableViewController : UITableViewController

@property (strong,nonatomic)NSArray<UIModel *> *dataSource;

@end
