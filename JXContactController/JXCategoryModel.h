//
//  JXCategoryModel.h
//  JXContactController
//
//  Created by yuezuo on 16/5/19.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JXCategoryModel : NSObject
/** 选中图像 */
@property (nonatomic,strong) NSString * highlighted_icon;
/** 图像 */
@property (nonatomic,strong) NSString * icon;
/** 名称 */
@property (nonatomic,strong) NSString * name;
/** 内容数组 */
@property (nonatomic,strong) NSArray * subcategories;

+ (instancetype)categoryModelWithDict:(NSDictionary *)dict;
@end
