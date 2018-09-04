//
//  CMKeyChain.h
//  UUID
//
//  Created by lxy on 2017/2/22.
//  Copyright © 2017年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMKeyChain : NSObject

+ (NSMutableDictionary *)getKeychainQuery:(NSString *)service ;

+ (void)save:(NSString *)service data:(id)data;

+ (id)load:(NSString *)service;

+ (void)delete:(NSString *)service;

@end
