//
//  FMHotSearchController.m
//  FMTagsView
//
//  Created by Subo on 16/5/27.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "FMHotSearchController.h"
#import "FMTagsView.h"

@interface FMHotSearchController ()<FMTagsViewDelegate>

@property (weak, nonatomic) IBOutlet FMTagsView *tagsView;

@property (strong, nonatomic) NSArray *dataArray;


@end

@implementation FMHotSearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tagsView.contentInsets = UIEdgeInsetsZero;
    _tagsView.tagInsets = UIEdgeInsetsMake(5, 15, 5, 15);
    _tagsView.tagBorderWidth = 1;
    _tagsView.tagcornerRadius = 2;
    _tagsView.tagBorderColor = [UIColor lightGrayColor];
    _tagsView.tagSelectedBorderColor = [UIColor lightGrayColor];
    _tagsView.tagBackgroundColor = [UIColor whiteColor];
    _tagsView.minimumLineSpacing = 10;
    _tagsView.minimumInteritemSpacing = 10;
    _tagsView.tagFont = [UIFont systemFontOfSize:14];
    _tagsView.tagTextColor = [UIColor grayColor];
    _tagsView.tagSelectedBackgroundColor = _tagsView.tagBackgroundColor;
    _tagsView.tagSelectedTextColor = _tagsView.tagTextColor;
    
    _tagsView.delegate = self;
    
    self.dataArray = @[@"麻棉连衣裙", @"面条", @"亲子装",
                       @"卫生巾", @"米", @"眉笔", @"蛋糕",
                       @"面包", @"洗洁精", @"咖啡速溶",
                       @"云南白药牙膏", @"方便面", @"空调"];
    _tagsView.tagsArray = self.dataArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - ......::::::: FMTagsViewDelegate :::::::......

- (void)tagsView:(FMTagsView *)tagsView didSelectTagAtIndex:(NSUInteger)index {
    NSString *selectedKey = self.dataArray[index];
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view.backgroundColor = [UIColor whiteColor];
    controller.title = selectedKey;
    [self.navigationController pushViewController:controller animated:YES];
}

@end
