//
//  SQLItem.h
//  Frame3.0
//
//  Created by lxy on 2018/8/4.
//  Copyright © 2018年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SQLItem : NSObject

@property (nonatomic,strong)NSString *name;//表字段名
@property (nonatomic,strong)NSString *value;//对应name的值
@property (nonatomic,strong)NSString *type;//类型
@property (nonatomic,strong)NSString *direction;//in输入 out输出

@end
