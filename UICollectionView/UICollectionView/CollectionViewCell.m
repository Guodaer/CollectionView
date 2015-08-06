//
//  CollectionViewCell.m
//  UICollectionView
//
//  Created by 郭达 on 15/6/18.
//  Copyright (c) 2015年 guoda. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createViewCell];
    }
    return self;
}

- (void)createViewCell
{
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    self.label.backgroundColor = [UIColor greenColor];
    [self addSubview:self.label];
}
@end
