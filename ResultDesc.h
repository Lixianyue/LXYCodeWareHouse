//
//  ResultDesc.h
//  Frame3.0
//
//  Created by lxy on 2018/8/4.
//  Copyright © 2018年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ResultDesc : NSObject
@property (nonatomic,strong)NSString *code;              // 响应状态
@property (nonatomic,strong)id        data;              // 返回数据
@property (nonatomic,strong)NSString *desc;              // 描述说明
@property (nonatomic,assign)BOOL       success;          // 返回标识 true:成功 false:失败
@property (nonatomic,strong)NSString *sessionid;         // session ID
@property (nonatomic,strong)NSString *resultJson;        // 服务器返回的json字符串
@property (nonatomic,strong)NSString *encode;            // 加密类型
@property (nonatomic,strong)NSString *other;             // 其它参数

@property (nonatomic,assign)int    total;                // 总数量
@property (nonatomic,assign)int    totalPage;            // 总页数
@property (nonatomic,strong)NSString *version;           // 服务端接口版本
@property (nonatomic,strong)NSString *rows;              // 结果数组
@end
