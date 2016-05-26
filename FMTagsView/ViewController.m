//
//  ViewController.m
//  FMTagsView
//
//  Created by Subo on 16/5/25.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "ViewController.h"
#import "FMTagsView.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic)  FMTagsView *tagsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView = [UIScrollView new];
    [self.view addSubview:_scrollView];
    
    _contentView = [UIView new];
    [self.scrollView addSubview:_contentView];
    
    _tagsView = [[FMTagsView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    _tagsView.backgroundColor = [UIColor whiteColor];
    _tagsView.delegate = self;
    _tagsView.mininumTagWidth = 82;
    _tagsView.tagcornerRadius = 8;
    [self.contentView addSubview:_tagsView];
    
    [self setConstraints];
    
    NSArray * items = @[NSLocalizedString(@"近一日", nil),
               NSLocalizedString(@"上周", nil),
               NSLocalizedString(@"上月", nil),
               NSLocalizedString(@"全部", nil)];
    self.tagsView.tagsArray = items;
}

- (void)setConstraints {
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(self.view);
    }];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make){
        make.edges.equalTo(self.scrollView);
        make.width.equalTo(self.scrollView);
    }];
    
    [self.tagsView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.contentView).offset(80);
        make.left.right.equalTo(self.contentView);
    }];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make){
        make.bottom.equalTo(self.tagsView.mas_bottom).offset(50);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
