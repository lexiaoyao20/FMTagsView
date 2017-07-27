//
//  ViewController.m
//  FMTagsView
//
//  Created by Subo on 16/5/25.
//  Copyright © 2016年 Followme. All rights reserved.
//

#import "ViewController.h"
#import "CustomerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showCustomerController:(id)sender {
    CustomerViewController *customerVC = [[CustomerViewController alloc] init];
    [self.navigationController pushViewController:customerVC animated:YES];
}

@end
