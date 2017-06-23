//
//  SDImageCache+Addition.m
//  SDWebImage
//
//  Created by TianJianan on 2017/6/23.
//  Copyright © 2017年 Dailymotion. All rights reserved.
//

#import "SDImageCache+Addition.h"

@implementation SDImageCache (Addition)

- (void)storeImageFromOldKey:(nullable NSString *)oldKey toNewKey:(nullable NSString *)newKey {
    if (oldKey.length > 0 && newKey.length > 0) {
        [self diskImageExistsWithKey:oldKey completion:^(BOOL isInCache) {
            NSString *oldPath = [self defaultCachePathForKey:oldKey];
            NSString *newPath = [self defaultCachePathForKey:newKey];
            [_fileManager moveItemAtPath:oldPath toPath:newPath error:nil];
        }];
    }
}

@end
