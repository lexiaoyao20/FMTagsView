//
//  FMAddTagsController.m
//  FMTagsView
//
//  Created by Subo on 16/5/27.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "FMAddTagsController.h"
#import "FMTagsView.h"

@interface FMAddTagsController ()

@property (weak, nonatomic) IBOutlet FMTagsView *tagsView;
@property (weak, nonatomic) IBOutlet UITextField *tagNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *indexTextField;

@property (strong, nonatomic) NSArray *dataArray;

@end

@implementation FMAddTagsController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = @[@"麻棉连衣裙", @"面条", @"亲子装",
                       @"卫生巾", @"米", @"眉笔", @"蛋糕",
                       @"面包", @"洗洁精", @"咖啡速溶",
                       @"云南白药牙膏", @"方便面", @"空调", @"AA"];
    _tagsView.tagsArray = self.dataArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)add:(id)sender {
    NSString *tagName = self.tagNameTextField.text;
    if (tagName.length > 0) {
        [self.tagsView addTag:tagName];
    }
}

- (IBAction)remove:(id)sender {
    if (self.indexTextField.text.length > 0) {
        NSInteger index = [self.indexTextField.text integerValue];
        [self.tagsView removeTagAtIndex:index];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
