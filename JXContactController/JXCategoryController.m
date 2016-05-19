//
//  JXCategoryController.m
//  JXContactController
//
//  Created by yuezuo on 16/5/19.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "JXCategoryController.h"
#import "JXCategoryModel.h"
@interface JXCategoryController ()
/** 一级菜单数组 */
@property (nonatomic,strong) NSMutableArray * items;

@end

@implementation JXCategoryController

static NSString * identifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
 
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
}

- (NSMutableArray *)items {
    if (_items == nil) {
        _items = [NSMutableArray array];
        NSArray * dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"categories" ofType:@"plist"]];
        NSMutableArray * categorys = [NSMutableArray array];
        for (NSDictionary * dict in dictArray) {
            JXCategoryModel * item = [JXCategoryModel categoryModelWithDict:dict];
            [categorys addObject:item];
        }
        _items = categorys;
    }
    return _items;
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    JXCategoryModel * item = self.items[indexPath.row];
    // 图片
    cell.imageView.image = [UIImage imageNamed:item.icon];
    // 高亮图片
    cell.imageView.highlightedImage = [UIImage imageNamed:item.highlighted_icon];
    cell.textLabel.text = item.name;
    cell.textLabel.highlightedTextColor = [UIColor redColor];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    JXCategoryModel * item = self.items[indexPath.row];
    NSArray * array = item.subcategories;
    if ([self.delegate respondsToSelector:@selector(categoryController:didSelectedSubcategories:)]) {
        [self.delegate categoryController:self didSelectedSubcategories:array];
    }
}

@end
