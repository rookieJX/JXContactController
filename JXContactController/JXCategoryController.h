//
//  JXCategoryController.h
//  JXContactController
//
//  Created by yuezuo on 16/5/19.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JXCategoryController;

@protocol JXCategoryControllerDelegate  <NSObject>

@optional
- (void)categoryController:(JXCategoryController *)categoryController didSelectedSubcategories:(NSArray *)subcategories;

@end

@interface JXCategoryController : UITableViewController
/** 代理 */
@property (nonatomic,weak) id<JXCategoryControllerDelegate>  delegate;

@end
