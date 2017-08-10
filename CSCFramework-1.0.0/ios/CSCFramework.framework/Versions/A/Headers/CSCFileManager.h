//
//  CSCFileManager.h
//  异常捕获测试
//
//  Created by zcsmart on 2017/6/13.
//  Copyright © 2017年 zcsmart. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessBlock)();
typedef void(^FailBlock)();

@interface CSCFileManager : NSObject

#pragma mark -- 获取Documents路径
+ (NSString *)getDocumentsPath;

#pragma mark -- 获取文件路径
+ (NSString *)getFilePath:(NSString *)fileName;

#pragma mark -- 创建文件夹
+ (void)createDirectory:(NSString *)directoryName success:(SuccessBlock)success fail:(FailBlock)fail;

#pragma mark -- 写入文件
+ (void)writeToFile:(NSString *)fileName withcontent:(id)content success:(SuccessBlock)success fail:(FailBlock)fail;

#pragma mark -- 读取文件内容
+ (NSData *)readContentOfFile:(NSString *)fileName;

#pragma mark -- 删除文件
+ (void)deleteFile:(NSString *)fileName success:(SuccessBlock)success fail:(FailBlock)fail;

#pragma mark -- 判断文件是否存在
+ (BOOL)isExistsAtPath:(NSString *)path;

- (void)test;
- (void)test2;

@end
