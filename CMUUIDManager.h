//
//  CMUUIDManager.h
//  UUID
//
//  Created by lxy on 2017/2/22.
//  Copyright © 2017年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMUUIDManager : NSObject

+(void)saveUUID:(NSString *)uuid;

+(id)readUUID;

+(void)deleteUUID;

@end
