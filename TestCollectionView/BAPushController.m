//
//  BAPushController.m
//  TestCollectionView
//
//  Created by Borago on 16/3/17.
//  Copyright © 2016年 Borago. All rights reserved.
//

#import "BAPushController.h"

@interface BAPushController ()

@end

@implementation BAPushController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置导航标题
    [self setNavgiTitle];
    
    // 通知
    [self addNotice];
}

#pragma mark - 设置
- (void)setNavgiTitle{

    self.title = self.navTitle;
    self.view.backgroundColor = RGB(100, 0, 0);
    
    
    
}

#pragma mark - 通知
- (void)addNotice{

    
}

@end
