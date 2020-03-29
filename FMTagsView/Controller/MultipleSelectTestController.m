//
//  MultipleSelectTestController.m
//  FMTagsView
//
//  Created by Subo on 2020/3/29.
//  Copyright © 2020 Followme. All rights reserved.
//

#import "MultipleSelectTestController.h"
#import "FMTagsView.h"

@interface MultipleSelectTestController ()<FMTagsViewDelegate>

@property (weak, nonatomic) IBOutlet FMTagsView *tagsView;

@property (strong, nonatomic) NSArray *dataArray;

@end

@implementation MultipleSelectTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"多选测试";
    
    _tagsView.contentInsets = UIEdgeInsetsZero;
    _tagsView.tagInsets = UIEdgeInsetsMake(5, 15, 5, 15);
    _tagsView.tagBorderWidth = 1;
    _tagsView.tagcornerRadius = 2;
    _tagsView.tagBorderColor = [UIColor lightGrayColor];
    _tagsView.tagSelectedBorderColor = [UIColor lightGrayColor];
    _tagsView.tagBackgroundColor = [UIColor whiteColor];
    _tagsView.lineSpacing = 10;
    _tagsView.interitemSpacing = 10;
    _tagsView.tagFont = [UIFont systemFontOfSize:14];
    _tagsView.tagTextColor = [UIColor grayColor];
    _tagsView.tagSelectedBackgroundColor = [UIColor orangeColor];
    _tagsView.tagSelectedTextColor = _tagsView.tagTextColor;
    _tagsView.allowsMultipleSelection = YES;
    _tagsView.maximumNumberOfSelection = 5; //最多允许选择5个
    
    _tagsView.delegate = self;
    
    self.dataArray = @[@"麻棉连衣裙", @"面条", @"亲子装",
                       @"卫生巾", @"米", @"眉笔", @"蛋糕",
                       @"面包", @"洗洁精", @"咖啡速溶",
                       @"云南白药牙膏", @"方便面", @"空调"];
    _tagsView.tagsArray = self.dataArray;
}

#pragma mark - FMTagsViewDelegate
- (void)tagsViewDidBeyondMaximumNumberOfSelection:(FMTagsView *)tagsView {
    NSLog(@"tagsViewDidBeyondMaximumNumberOfSelection:");
}

@end
