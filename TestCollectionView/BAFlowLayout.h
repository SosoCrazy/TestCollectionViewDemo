//
//  BAFlowLayout.h
//  TestCollectionView
//
//  Created by Borago on 16/3/17.
//  Copyright © 2016年 Borago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BAFlowLayout : UICollectionViewFlowLayout

@property CGFloat move_x;
@property BOOL    isPagingEnabled;

-(void)setPagingEnabled:(BOOL)isPagingEnabled;

@end
