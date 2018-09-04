//
//  SQLFactory.m
//  Frame3.0
//
//  Created by lxy on 2018/8/7.
//  Copyright © 2018年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import "SQLFactory.h"

@implementation SQLFactory
NSString *  const DYH         = @"#^39^#";     //单引号
NSString *  const STR         = @"#^^#:";      //字符串
NSString *  const PK          = @"#old_";        //主键字段, 或条件字段


-(NSString *)buildSqlWithSelection:(NSString *)selection objece:(id)selectionArgs{
    NSMutableString *sb= [NSMutableString stringWithString:selection];
    // 将参数进行编码
    if(selectionArgs){
        for (int i=0; i< [selectionArgs count];i++) {
            id item = selectionArgs[i];
            if([item isKindOfClass: [NSNumber class]]){
                
            }else{
                NSString *arg = item;
                if([arg containsString:@"'"]){
                    arg = [arg stringByReplacingOccurrencesOfString:@"\\'" withString:DYH];
                }
                arg = [NSString stringWithFormat:@"'%@%@'",STR,arg];
                selectionArgs[i] = arg;
            }
        }
    }
    int fromIndex = 0;    //占位符出现位置
    int index = 0;        //参数使用位置
    @try{
         do{
            NSRange range = [sb rangeOfString:@"?"];
            fromIndex = (int)range.location;
            
            if (fromIndex >= 0) {
                [sb deleteCharactersInRange:range];        //删除原来的
                NSString *arg = selectionArgs[index++];
                [sb insertString:arg atIndex:fromIndex];
                fromIndex += arg.length;
            }
        } while (fromIndex >= 0);
    } @catch (NSException *exception){
       
    }@finally{
        
    }
    return sb;
    
}


@end
