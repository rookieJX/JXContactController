//
//  JXCategoryModel.m
//  JXContactController
//
//  Created by yuezuo on 16/5/19.
//  Copyright © 2016年 yuezuo. All rights reserved.
//

#import "JXCategoryModel.h"

@implementation JXCategoryModel
+ (instancetype)categoryModelWithDict:(NSDictionary *)dict {
    JXCategoryModel * model = [[self alloc] init];
    
    [model setValuesForKeysWithDictionary:dict];
    
    return model;
}
@end
