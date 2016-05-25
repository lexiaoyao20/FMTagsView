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

@property (strong, nonatomic)  FMTagsView *tagsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tagsView = [[FMTagsView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    _tagsView.backgroundColor = [UIColor whiteColor];
    _tagsView.delegate = self;
    _tagsView.mininumTagWidth = 82;
    _tagsView.tagcornerRadius = 8;
    [self.view addSubview:_tagsView];
    
    NSArray * items = @[NSLocalizedString(@"近一日", nil),
               NSLocalizedString(@"上周", nil),
               NSLocalizedString(@"上月", nil),
               NSLocalizedString(@"全部", nil)];
    self.tagsView.tagsArray = items;
    
    [self.tagsView mas_makeConstraints:^(MASConstraintMaker *make){
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view).offset(150);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
