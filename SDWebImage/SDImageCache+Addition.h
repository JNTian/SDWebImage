//
//  SDImageCache+Addition.h
//  SDWebImage
//
//  Created by TianJianan on 2017/6/23.
//  Copyright © 2017年 Dailymotion. All rights reserved.
//

#import <SDWebImage iOS static/SDWebImage iOS static.h>

@interface SDImageCache (Addition)

- (void)storeImageFromOldKey:(nullable NSString *)oldKey toNewKey:(nullable NSString *)newKey;

@end
