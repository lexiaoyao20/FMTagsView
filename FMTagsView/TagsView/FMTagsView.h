//
//  FMTagsView.h
//  FollowmeiOS
//
//  Created by Subo on 16/5/25.
//  Copyright © 2016年 com.followme. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FMTagsView : UIView

@property (nonatomic) UIEdgeInsets contentInsets; //default is (10,10,10,10)

@property (nonatomic) NSArray<NSString *> *tagsArray;   //数据源

#pragma mark - ......::::::: 标签定制属性 :::::::......

@property (nonatomic) UIEdgeInsets tagInsets; // default is (5,5,5,5)
@property (nonatomic) CGFloat tagBorderWidth;           //标签边框宽度, default is 0
@property (strong, nonatomic) UIColor *tagBorderColor;
@property (strong, nonatomic) UIColor *tagSelectedBorderColor;
@property (strong, nonatomic) UIColor *tagBackgroundColor;
@property (strong, nonatomic) UIColor *tagSelectedBackgroundColor;
@property (strong, nonatomic) UIFont *tagFont;
@property (strong, nonatomic) UIFont *tagSelectedFont;
@property (strong, nonatomic) UIColor *tagTextColor;
@property (strong, nonatomic) UIColor *tagSelectedTextColor;

@property (nonatomic) CGFloat tagHeight;

#pragma mark - ......::::::: 选中 :::::::......

@property (nonatomic) BOOL allowsSelection;             //是否允许选中, default is YES
@property (nonatomic) BOOL allowsMultipleSelection;     //是否允许多选, default is NO

@property (nonatomic, readonly) NSUInteger selectedIndex;   //选中索引
@property (nonatomic, readonly) NSArray<NSString *> *selecedTags;     //多选状态下，选中的Tags

- (void)selectTagAtIndex:(NSUInteger)index;
- (void)deSelectTagAtIndex:(NSUInteger)index;

@end


@protocol FMTagsViewDelegate <NSObject>

- (BOOL)tagsView:(FMTagsView *)tagsView shouldSelectTagAtIndex:(NSUInteger)index;
- (void)tagsView:(FMTagsView *)tagsView didSelectTagAtIndex:(NSUInteger)index;

@end