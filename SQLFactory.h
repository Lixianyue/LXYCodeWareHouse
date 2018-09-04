//
//  SQLFactory.h
//  Frame3.0
//
//  Created by lxy on 2018/8/7.
//  Copyright © 2018年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const DYH;
extern NSString * const STR;
extern NSString * const PK;              

@interface SQLFactory : NSObject

-(NSString *)buildSqlWithSelection:(NSString *)selection objece:(id)selectionArgs;
@end
