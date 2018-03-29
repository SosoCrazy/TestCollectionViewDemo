//
//  BACustomCell.m
//  TestCollectionView
//
//  Created by Borago on 16/3/17.
//  Copyright © 2016年 Borago. All rights reserved.
//

#import "BACustomCell.h"

@implementation BACustomCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        // 初始化cell的frame
        [self initCellFrame];
        
        // 初始化cell的空间
        [self initCellSubviews];
        
    }
    
    return self;
}

#pragma mark - 初始化frame
- (void)initCellFrame{

    // 设置cell.image的layer
    CALayer *layer = [self layer];
    layer.borderColor = [[UIColor lightGrayColor] CGColor];
    layer.borderWidth = 5.0f;
    layer.cornerRadius = 15.0f;
    layer.backgroundColor = RGB(90, 100, 1).CGColor;
    
    self.layer.shadowColor = [UIColor redColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 10.0;
    
}

#pragma mark - 初始化subviews
- (void)initCellSubviews{

    // 设置imageview的frame
    CGRect frame = CGRectMake(5,
                              5,
                              self.bounds.size.width-5*2,
                              self.bounds.size.height-5*2);
    
    self.displayImgView = [[UIImageView alloc] initWithFrame:frame];
    self.displayImgView.backgroundColor = RGB(90, 90, 90);
    self.displayImgView.layer.cornerRadius = 15.0f;
    [self addSubview:self.displayImgView];
    
    
    // 测试label
//    self.testLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 90, 100, 100)];
//    self.testLabel.backgroundColor = [UIColor redColor];
//    [self addSubview:self.testLabel];
    
}

@end
