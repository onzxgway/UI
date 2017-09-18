//
//  UIModel.h
//  UserInterface
//
//  Created by san_xu on 2017/9/18.
//  Copyright © 2017年 onzxgway. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIDetailModel;

@interface UIModel : NSObject

@property (copy,nonatomic)NSString *title;//标题

@property (strong,nonatomic)NSArray<UIDetailModel *> *detailModels;

@end
