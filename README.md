# FMTagsView

[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/lexiaoyao20/FMTagsView/LICENSE)&nbsp;
[![Version](https://img.shields.io/cocoapods/v/FMTagsView.svg?style=flat)](http://cocoapods.org/?q= FMTagsView)&nbsp;
[![Platform](https://img.shields.io/cocoapods/p/FMTagsView.svg?style=flat)](http://cocoapods.org/?q= FMTagsView)&nbsp;
[![CI Status](http://img.shields.io/travis/Subo/FMTagsView.svg?style=flat)](http://cocoapods.org/?q= FMTagsView)&nbsp;

一个基于UICollectionView的标签展示控件 

## Screenshots
1. 示例一，仿天猫热门搜索标签的效果：
![Hot Search.gif](https://github.com/lexiaoyao20/FMTagsView/blob/master/Screenshots/aaaa.gif)

2. 实例二，动态添加和删除标签

![动态添加和删除.gif](https://github.com/lexiaoyao20/FMTagsView/blob/master/Screenshots/bbb.gif)


##  Features
* 支持AutoLayout
* 支持自定义Tag的外观，如圆角，背景颜色，标签文字颜色...
* 支持动态添加和删除Tag
* 支持单选和多选模式

## How to Use

首先，添加 FMTagsView.h 和 FMTagsView.m 这两个文件到你项目中，或者使用pod来安装。
```
pod 'FMTagsView'
```

控件初始化示例：
```
  FMTagsView *tagsView = [[FMTagsView alloc] initWithFrame:CGRectMake(10, 120, 300, 150)];
    tagsView.contentInsets = UIEdgeInsetsZero;
    tagsView.tagInsets = UIEdgeInsetsMake(5, 15, 5, 15);
    tagsView.tagBorderWidth = 1;
    tagsView.tagcornerRadius = 2;
    tagsView.tagBorderColor = [UIColor lightGrayColor];
    tagsView.tagSelectedBorderColor = [UIColor lightGrayColor];
    tagsView.tagBackgroundColor = [UIColor whiteColor];
    tagsView.lineSpacing = 10;
    tagsView.interitemSpacing = 10;
    tagsView.tagFont = [UIFont systemFontOfSize:14];
    tagsView.tagTextColor = [UIColor grayColor];
    tagsView.delegate = self;
    [self.view addSubview:tagsView];
    
    NSArray *dataArray = @[@"麻棉连衣裙", @"面条", @"亲子装",
                       @"卫生巾", @"米", @"眉笔", @"蛋糕",
                       @"面包", @"洗洁精", @"咖啡速溶",
                       @"云南白药牙膏", @"方便面", @"空调"];
    //设置数据源
    tagsView.tagsArray = dataArray;
```
实现代理方法：
```
//点击标签处理逻辑
- (void)tagsView:(FMTagsView *)tagsView didSelectTagAtIndex:(NSUInteger)index {
    NSString *selectedKey = self.dataArray[index];
    UIViewController *controller = [[UIViewController alloc] init];
    controller.view.backgroundColor = [UIColor whiteColor];
    controller.title = selectedKey;
    [self.navigationController pushViewController:controller animated:YES];
}
```
