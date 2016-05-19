//
//  JXCategorySubController.m
//  JXContactController
//
//  Created by yuezuo on 16/5/19.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "JXCategorySubController.h"

@interface JXCategorySubController ()
/** 子类 */
@property (nonatomic,strong) NSArray * subArray;
@end

@implementation JXCategorySubController

static NSString * indetifier = @"subCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:indetifier];
    
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.subArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indetifier];
    
    cell.textLabel.text = self.subArray[indexPath.row];
    
    return cell;
}



#pragma mark - 代理方法
- (void)categoryController:(JXCategoryController *)categoryController didSelectedSubcategories:(NSArray *)subcategories {
    self.subArray = subcategories;
    [self.tableView reloadData];
}

@end
