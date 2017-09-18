//
//  Person.m
//  UserInterface
//
//  Created by san_xu on 2017/9/18.
//  Copyright © 2017年 onzxgway. All rights reserved.
//

#import "Person.h"

@implementation Person

//需求：程序启动时创建对象
static Person *person = nil;
+ (void)load {
    person = [[self alloc] init];
}

+ (instancetype)sharedPerson {
    return person;
}

+ (instancetype)alloc {
    
    if (person) {
        // 抛异常,告诉外界不分配
        NSException *exception = [[NSException alloc] initWithName:@"NSInternalInconsistencyException" reason:@"There can only be one Person instance." userInfo:nil];
        [exception raise];
    }
    
    return [super alloc];
}

@end
