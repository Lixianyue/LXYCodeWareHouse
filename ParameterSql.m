//
//  ParameterSql.m
//  Frame3.0
//
//  Created by lxy on 2018/8/4.
//  Copyright © 2018年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import "ParameterSql.h"

@implementation ParameterSql

- (instancetype)init{
    self = [super init];
    if (self){
        _pageNum1 = 1;
        _pageSize = 1000;
    }
    return self;
}

- (NSMutableArray *)items{
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}

- (SQLItem *)addItemWithName:(NSString *)name value:(NSString *)value{
    SQLItem *item = [[SQLItem alloc]init];
    item.name = name;
    item.value = value;
    item.direction = @"in";
    item.type = @"String";
    return item;
}

- (SQLItem *)addItemWithName:(NSString *)name direction:(NSString *)direction type:(NSString *)type{
    SQLItem *item = [[SQLItem alloc]init];
    item.name = name;
    item.value = @"";
    item.direction = @"out";
    item.type = @"cursor";
    return item;
}

@end
