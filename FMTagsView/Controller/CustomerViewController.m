//
//  CustomerViewController.m
//  FMTagsView
//
//  Created by Subo on 2017/7/27.
//  Copyright © 2017年 Followme. All rights reserved.
//

#import "CustomerViewController.h"
#import "FMTagsView.h"

@interface CustomerViewController ()<FMTagsViewDelegate>

@property (nonatomic, weak) FMTagsView *tagsView;
@property (strong, nonatomic) NSArray *dataArray;

@end

@implementation CustomerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    FMTagsView *tagsView = [[FMTagsView alloc] initWithFrame:CGRectMake(10, 70, 320, 190)];
    tagsView.backgroundColor = [UIColor whiteColor];
    tagsView.delegate = self;
    tagsView.contentInsets = UIEdgeInsetsMake(15, 15, 20, 15);
    tagsView.tagcornerRadius = 5;
    tagsView.layer.borderColor = [UIColor grayColor].CGColor;
    tagsView.layer.borderWidth = 1;
    [self.view addSubview:tagsView];
    self.tagsView = tagsView;
    
    self.dataArray = @[@"麻棉连衣裙", @"面条", @"亲子装",
                       @"卫生巾", @"米", @"眉笔", @"蛋糕",
                       @"面包", @"洗洁精", @"咖啡速溶",
                       @"云南白药牙膏", @"方便面", @"空调"];
    _tagsView.tagsArray = self.dataArray;
    
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(100, 400, 90, 32);
    [button setTitle:@"Layout" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(layoutTagsView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)layoutTagsView {
    [self.tagsView layoutIfNeeded];
}

#pragma mark - ......::::::: FMTagsViewDelegate :::::::......
- (void)tagsView:(FMTagsView *)tagsView willDispayCell:(FMTagCell *)tagCell atIndex:(NSUInteger)index {
    
}

@end
