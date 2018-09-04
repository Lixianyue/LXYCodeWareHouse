//
//  ParameterSql.h
//  Frame3.0
//
//  Created by lxy on 2018/8/4.
//  Copyright © 2018年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SQLItem.h"

@interface ParameterSql : NSObject
@property (nonatomic,strong)NSMutableArray *items;
@property (nonatomic,strong)NSString *sql; //sql语句
@property (nonatomic,strong)NSString *tablename;    //操作表名
@property (nonatomic,assign)int pageSize;  //分页数量
@property (nonatomic,assign)int pageNum1; //第几页

/**
 @param name  表字段名
 @param value 对应name的值
 @return  返回通用的SQLItme
 */
- (SQLItem *)addItemWithName:(NSString *)name value:(NSString *)value;

/**
 最后的p_rf

 @param name 表字段名
 @param direction 输出为out
 @param type 类型为cursor
 @return 返回name为p_rf的SQLItme
 */
- (SQLItem *)addItemWithName:(NSString *)name direction:(NSString *)direction type:(NSString *)type;


@end
