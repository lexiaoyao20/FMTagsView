//
//  FMTagsView.m
//  FollowmeiOS
//
//  Created by Subo on 16/5/25.
//  Copyright © 2016年 com.followme. All rights reserved.
//

#import "FMTagsView.h"

static NSString * const kTagCellID = @"TagCellID";

@interface FMTagCell : UICollectionViewCell

@property (strong, nonatomic) UILabel *tagLabel;

@end

@implementation FMTagCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame: frame]) {
        
    }
    
    return self;
}

@end

@interface FMTagsView ()<UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) UICollectionView *collectionView;

@end

@implementation FMTagsView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit {
    _contentInsets = UIEdgeInsetsMake(10, 10, 10, 10);
    _tagInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    _tagBorderWidth = 0;
    _tagBackgroundColor = [UIColor colorWithRed:0.94 green:0.94 blue:0.94 alpha:1.0];
    _tagSelectedBackgroundColor = [UIColor colorWithRed:1.0 green:0.38 blue:0.0 alpha:1.0];
    _tagFont = [UIFont systemFontOfSize:14];
    _tagSelectedFont = [UIFont systemFontOfSize:14];
    _tagTextColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    _tagSelectedTextColor = [UIColor whiteColor];
    
    _tagHeight = 28;
    
    [self prepareUI];
}

- (void)prepareUI {
    _collectionView = [[UICollectionView alloc] initWithFrame:self.bounds
                                         collectionViewLayout:[UICollectionViewFlowLayout new]];
    [_collectionView registerClass:[FMTagCell class] forCellWithReuseIdentifier:kTagCellID];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    [self addSubview:_collectionView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _collectionView.frame = self.bounds;
}

#pragma mark - ......::::::: CollectionView DataSource & Delegate :::::::......

#pragma mark - ......::::::: Getter and Setter :::::::......

- (UIFont *)tagSelectedFont {
    if (!_tagSelectedFont) {
        return _tagFont;
    }
    
    return _tagSelectedFont;
}

@end
