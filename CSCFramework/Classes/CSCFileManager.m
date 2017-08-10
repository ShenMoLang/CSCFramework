//
//  CSCFileManager.m
//  异常捕获测试
//
//  Created by zcsmart on 2017/6/13.
//  Copyright © 2017年 zcsmart. All rights reserved.
//

#import "CSCFileManager.h"
#import "AFNetworking.h"

@implementation CSCFileManager

#pragma mark -- 获取Documents路径
+ (NSString *)getDocumentsPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    return path;
}

#pragma mark -- 获取文件路径
+ (NSString *)getFilePath:(NSString *)fileName {
    NSMutableString *str = [[NSMutableString alloc] initWithString:[self getDocumentsPath]];
    [str appendFormat:@"/%@", fileName];
    return str;
}

#pragma mark -- 创建文件夹
+ (void)createDirectory:(NSString *)directoryName success:(SuccessBlock)success fail:(FailBlock)fail {
    NSString *documentsPath = [self getDocumentsPath];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSDirectory = [documentsPath stringByAppendingPathComponent:directoryName];
    BOOL isSuccess = [fileManager createDirectoryAtPath:iOSDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    if (isSuccess) {
        if (success) {
            success();
        }
    } else {
        if (fail) {
            fail();
        }
    }
}

#pragma mark -- 写入文件
+ (void)writeToFile:(NSString *)fileName withcontent:(id)content success:(SuccessBlock)success fail:(FailBlock)fail {
    NSString *documentsPath =[self getDocumentsPath];
    
    NSArray *filePathArr = [fileName componentsSeparatedByString:@"/"];
    if (filePathArr.count > 1) {
        NSMutableString *temStr = [NSMutableString stringWithString:filePathArr[0]];
        for (int i = 1; i < filePathArr.count - 1; i++) {
            [temStr appendString:[NSString stringWithFormat:@"/%@", filePathArr[i]]];
        }
        //创建文件夹
        [[self class] createDirectory:temStr success:^{
            
        } fail:^{
            
        }];
    }
    
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:fileName];
    if ([content isKindOfClass:[NSData class]]) {
        NSData *contentData = (NSData *)content;
        BOOL isSuccess = [contentData writeToFile:iOSPath atomically:YES];
        if (isSuccess) {
            if (success) {
                success();
            }
        } else {
            if (fail) {
                fail();
            }
        }
    } else {
        BOOL isSuccess = [content writeToFile:iOSPath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        if (isSuccess) {
            if (success) {
                success();
            }
        } else {
            if (fail) {
                fail();
            }
        }
    }
    
}

#pragma mark -- 读取文件内容
+ (NSData *)readContentOfFile:(NSString *)fileName {
    NSString *documentsPath =[self getDocumentsPath];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:fileName];
    NSFileHandle* fh = [NSFileHandle fileHandleForReadingAtPath:iOSPath];
    NSData *data = [fh readDataToEndOfFile];
    return data;
}

#pragma mark -- 删除文件
+ (void)deleteFile:(NSString *)fileName success:(SuccessBlock)success fail:(FailBlock)fail {
    NSString *documentsPath =[self getDocumentsPath];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:fileName];
    BOOL isSuccess = [fileManager removeItemAtPath:iOSPath error:nil];
    if (isSuccess) {
        if (success) {
            success();
        }
    } else {
        if (fail) {
            fail();
        }
    }
}

+ (BOOL)isExistsAtPath:(NSString *)path {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSString *documentsPath =[self getDocumentsPath];
    NSString *iOSPath = [documentsPath stringByAppendingPathComponent:path];
    if ([fileManager fileExistsAtPath:iOSPath]) {
        return YES;
    } else {
        return NO;
    }
}

- (void)test {
    AFHTTPRequestSerializer *p = [AFHTTPRequestSerializer serializer];
    p.timeoutInterval = 20;
}

- (void)test2 {
    AFHTTPRequestSerializer *p = [AFHTTPRequestSerializer serializer];
    p.timeoutInterval = 20;
}

@end
