//
//  BAMainController.m
//  TestCollectionView
//
//  Created by Borago on 16/3/17.
//  Copyright © 2016年 Borago. All rights reserved.
//

#import "BAMainController.h"
#import "BACustomCell.h"
#import "BAFlowLayout.h"
#import "BAPushController.h"

@interface BAMainController ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
{
    NSArray *_data;          // datasource
}
@end

@implementation BAMainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化UI
    [self customUI];
}

- (void)customUI{
    
    // 设置导航和标题
    self.title = @"HOME";
    
    // 初始化flowlayout
    BAFlowLayout *layout = [[BAFlowLayout alloc] init];
    CGRect frame = CGRectMake(0,
                              0,
                              SCREENWIDTH,
                              SCREENHEIGHT);
    self.customCollectionView = [[UICollectionView alloc] initWithFrame:frame
                                                   collectionViewLayout:layout];
    [self.customCollectionView registerClass:[BACustomCell class] forCellWithReuseIdentifier:@"BACustomCell"];
    self.customCollectionView.backgroundColor = RGB(100, 100, 100);

    [layout setPagingEnabled:YES];
    
    // 设置代理和数据源
    self.customCollectionView.dataSource = self;
    self.customCollectionView.delegate = self;
    
    _data = @[@"1",@"2",@"3",@"4"];
    [self.view addSubview:self.customCollectionView];
    
    // 刷新数据
    [_customCollectionView reloadData];

}

#pragma mark collection detegate and datasource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    BACustomCell *cell = (BACustomCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"BACustomCell" forIndexPath:indexPath];
    
//    NSInteger row = indexPath.row;
    cell.displayImgView.image = [UIImage imageNamed:@"1"];
//    cell.displayImgView.image = [UIImage imageNamed:[_data objectAtIndex:row]];
//    cell.testLabel.text = @"TESTTESTTEST";
    
    return cell;
}

#pragma mark 每个item的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(SCREENWIDTH - 60, SCREENHEIGHT - 64 - 60 - 60);
}

#pragma mark cell的点击事件
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    BAPushController *pushVC = [[BAPushController alloc] init];
    pushVC.navTitle = [NSString stringWithFormat:@"card%ld", (long)indexPath.row];
    [self.navigationController pushViewController:pushVC animated:YES];
}

@end
