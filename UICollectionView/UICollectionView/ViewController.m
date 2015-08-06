//
//  ViewController.m
//  UICollectionView
//
//  Created by 郭达 on 15/6/18.
//  Copyright (c) 2015年 guoda. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UICollectionView *xinge = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    UICollectionViewFlowLayout *view = [[UICollectionViewFlowLayout alloc] init];
    view.itemSize = CGSizeMake(60, 60);
    //列编剧
    view.minimumInteritemSpacing = 30;
    //行间距
    view.minimumLineSpacing = 10;
    //header区大小
//    view.headerReferenceSize = CGSizeMake(100, 100);
    //底部区域大小
//    view.footerReferenceSize = CGSizeMake(100, 100);
    //滚动方向
    view.scrollDirection = UICollectionViewScrollDirectionVertical;
    //item与周围边缘的间距
    view.sectionInset = UIEdgeInsetsMake(20, 22, 20, 22);
    
    UICollectionView *cv = [[UICollectionView alloc] initWithFrame:[[UIScreen mainScreen] bounds] collectionViewLayout:view];
    [self.view addSubview:cv];
    cv.delegate = self;
    cv.dataSource = self;
    //注册cell
    [cv registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{

    return 100;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cell";
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    cell.label.text = @"可一更牛逼";
    cell.label.numberOfLines = 0;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
