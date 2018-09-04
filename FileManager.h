//
//  FileManager.h
//  Msd_Salesman
//
//  Created by fjm on 14-10-21.
//  Copyright (c) 2014年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIImageView+AFNetworking.h>

@interface FileManager : NSObject

/**
 *  通过时间戳作为mediaId来生成一个本地的路径作为图片存储的位置
 */
+ (NSString *)mediaFilePath:(NSString *)mediaId;
//+ (NSString *)voiceFilePath:(NSString *)mediaId; //获取语音存储位置
//+ (BOOL)mediaExistsAtPath:(NSString *)mediaPath;
//+ (BOOL)saveMedia:(NSData *)mediaData mediaPath:(NSString *)mediaPath;
//+ (BOOL)saveVoice:(NSString *)amrPath mediaPath:(NSString *)wavPath;
////+ (BOOL)saveVoice:(NSString *)amrPath mediaPath:(NSString *)mp3Path;
//
//+ (NSString *)voiceFilePathMp3:(NSString *)mediaId;
//
//
//
////语音格式转换
//+ (int)amrToWav:(NSString*)_amrPath wavSavePath:(NSString*)_savePath;
//+ (int)wavToAmr:(NSString*)_wavPath amrSavePath:(NSString*)_savePath;
//
////保存并上传相册中选择要发送的图片
//+ (NSString *)selectedImagePath;
//+ (BOOL)saveSeletedImage:(UIImage *)tempImage;
//
//+ (NSString *)selectedImagePath:(NSString *)timeStamp;
//+ (BOOL)saveSeletedImage:(UIImage *)tempImage withName:(NSString *)timeStamp;
//+ (BOOL)renameImageFormTimeStamp:(NSString *)timeStamp mediaId:(NSString *)mediaId;
//
////获取文件的大小
//+ (long long)fileSizeAtPath:(NSString*)filePath;
//
//+ (void)renameImageWithMediaId:(NSString *)mediaId; //上传图片后获得mediaId，然后用mediaId重命名图片

/**
 *  保存选择的图片到本地指定位置 
 */
+ (BOOL)saveSeletedImage:(UIImage *)image withImagePath:(NSString *)imagePath;

/**
 *  删除指定路径的图片
 */
+ (BOOL)removeImageInImagePath:(NSString *)imagePath;

@end
