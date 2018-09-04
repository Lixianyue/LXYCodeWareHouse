//
//  FileManager.m
//  Msd_Salesman
//
//  Created by fjm on 14-10-21.
//  Copyright (c) 2014年 Shenzhen MSD Technology Co.,LTD. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager

#define MEDIA_PATH NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]

+ (NSString *)mediaFilePath:(NSString *)mediaId
{
    NSFileManager *fileManage = [NSFileManager defaultManager];
    if (![fileManage fileExistsAtPath:MEDIA_PATH]) {
        // 创建目录
        [fileManage createDirectoryAtPath:MEDIA_PATH withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
//    NSLog(@"--%@",MEDIA_PATH);
    NSString *filename=[MEDIA_PATH stringByAppendingPathComponent:mediaId];
    
    return filename;
}

//+ (NSString *)voiceFilePath:(NSString *)mediaId
//{
//    NSFileManager *fileManage = [NSFileManager defaultManager];
//    if (![fileManage fileExistsAtPath:VOICE_PATH]) {
//        // 创建目录
//        [fileManage createDirectoryAtPath:VOICE_PATH withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//    NSString *filename=[VOICE_PATH stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@.wav",mediaId]];
//    return filename;
//}

//+ (NSString *)voiceFilePathMp3:(NSString *)mediaId
//{
//    NSFileManager *fileManage = [NSFileManager defaultManager];
//    if (![fileManage fileExistsAtPath:VOICE_PATH]) {
//        // 创建目录
//        [fileManage createDirectoryAtPath:VOICE_PATH withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//    NSString *filename=[VOICE_PATH stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@.mp3",mediaId]];
//    return filename;
//}
//
////判断meida文件是否存在
//+ (BOOL)mediaExistsAtPath:(NSString *)mediaPath
//{
//    NSFileManager *fileManage = [NSFileManager defaultManager];
//    
//    return [fileManage fileExistsAtPath:mediaPath];
//}
//
//+ (BOOL)saveMedia:(NSData *)mediaData mediaPath:(NSString *)mediaPath
//{
//    NSFileManager *fileManage = [NSFileManager defaultManager];
//    return [fileManage createFileAtPath:mediaPath contents:mediaData attributes:nil];
//}

//+ (BOOL)saveVoice:(NSString *)amrPath mediaPath:(NSString *)wavPath
//{
//    BOOL success = [self amrToWav:amrPath wavSavePath:wavPath];
//    //    [self amrToMp3:amrPath mp3SavePath:mp3Path];
//    NSFileManager* fileManager=[NSFileManager defaultManager];
//    
//    if (!success) {
//        [fileManager moveItemAtPath:amrPath toPath:wavPath error:nil];
//        return NO;
//    }
//    
//    if([fileManager removeItemAtPath:amrPath error:nil])
//    {
//        NSLog(@"删除");
//    }
//    
//    return YES;
//}


//+ (int)amrToMp3:(NSString*)_amrPath mp3SavePath:(NSString*)_savePath{   //暂时注释
//    
//    
//    
//    
//    return 1;
//}


//+ (int)amrToWav:(NSString*)_amrPath wavSavePath:(NSString*)_savePath{
//    
//    if (! DecodeAMRFileToWAVEFile([_amrPath cStringUsingEncoding:NSASCIIStringEncoding], [_savePath cStringUsingEncoding:NSASCIIStringEncoding]))
//        return 0;
//    
//    return 1;
//}
//
//+ (int)wavToAmr:(NSString*)_wavPath amrSavePath:(NSString*)_savePath{
//    
//    if (EncodeWAVEFileToAMRFile([_wavPath cStringUsingEncoding:NSASCIIStringEncoding], [_savePath cStringUsingEncoding:NSASCIIStringEncoding], 1, 16))
//        return 0;
//    
//    return 1;
//}
//
//#pragma mark -
//#pragma mark Image
//
//+ (NSString *)selectedImagePath:(NSString *)timeStamp
//{
//    NSString *imagePath;
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    
//    if ([fileManager fileExistsAtPath:[MEDIA_PATH stringByAppendingString:[NSString stringWithFormat:@"/%@.jpg", timeStamp]]]) {
//        imagePath = [MEDIA_PATH stringByAppendingString:[NSString stringWithFormat:@"/%@.jpg", timeStamp]];
//    }
//    return imagePath;
//}
//
//+ (BOOL)saveSeletedImage:(UIImage *)tempImage withName:(NSString *)timeStamp
//{
//    NSData *data;
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    float o = 0.8;
//    data = UIImageJPEGRepresentation(tempImage, o);
//    //    return [fileManager createFileAtPath:[MEDIA_PATH stringByAppendingString:@"/tempImage.jpg"] contents:data attributes:nil];   //将图片保存为JPEG格式
//    return [fileManager createFileAtPath:[MEDIA_PATH stringByAppendingString:[NSString stringWithFormat:@"/%@.jpg", timeStamp]] contents:data attributes:nil];   //将图片保存为JPEG格式
//}

//+ (NSString *)selectedImagePath
//{
//    NSString *imagePath;
//    NSFileManager *fileManager = [NSFileManager defaultManager];
//    
//    if ([fileManager fileExistsAtPath:[MEDIA_PATH stringByAppendingString:@"/tempImage.jpg"]]) {
//        imagePath = [MEDIA_PATH stringByAppendingString:@"/tempImage.jpg"];
//    }
//    return imagePath;
//}

+ (BOOL)saveSeletedImage:(UIImage *)image withImagePath:(NSString *)imagePath
{
    NSData *data;
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    float o = 0.95;
    data = UIImageJPEGRepresentation(image, o);
    
//    NSLog(@"---%@--%g-%g",[FileManager mediaFilePath:imagePath],image.size.width,image.size.height);
    return [fileManager createFileAtPath:[FileManager mediaFilePath:imagePath] contents:data attributes:nil];   //将图片保存为JPEG格式
}

+ (BOOL)removeImageInImagePath:(NSString *)imagePath
{
    BOOL deleteSuccess = NO;
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    BOOL bRet = [fileMgr fileExistsAtPath:imagePath];
    if (bRet) {
        //
        NSError *err;
        deleteSuccess = [fileMgr removeItemAtPath:imagePath error:&err];
    }
    return deleteSuccess;
}


//+ (long long)fileSizeAtPath:(NSString*)filePath
//{
//    NSFileManager* manager = [NSFileManager defaultManager];
//    if ([manager fileExistsAtPath:filePath]){
//        return [[manager attributesOfItemAtPath:filePath error:nil] fileSize];
//    }
//    return 0;
//}
//
//+ (BOOL)renameImageFormTimeStamp:(NSString *)timeStamp mediaId:(NSString *)mediaId
//{
//    NSFileManager *fileMgr = [NSFileManager defaultManager];
//    NSString *filePath = [self selectedImagePath:timeStamp];
//    //通过移动该文件对文件重命名
//    NSString *filePath2= [MEDIA_PATH stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@.jpg", mediaId]];
//    
//    return [fileMgr moveItemAtPath:filePath toPath:filePath2 error:nil];
//}
//
//
//+ (void)renameImageWithMediaId:(NSString *)mediaId
//{
//    
//    [self renameImage:mediaId];
//    
//}
//
//+ (BOOL)renameImage:(NSString *)mediaId
//{
//    NSFileManager *fileMgr = [NSFileManager defaultManager];
//    NSString *filePath = [self selectedImagePath];
//    //通过移动该文件对文件重命名
//    NSString *filePath2= [MEDIA_PATH stringByAppendingPathComponent:[NSString stringWithFormat:@"/%@.jpg", mediaId]];
//    
//    return [fileMgr moveItemAtPath:filePath toPath:filePath2 error:nil];
//}


@end
