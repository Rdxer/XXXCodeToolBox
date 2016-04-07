//
//  XXXCodeToolBox.h
//  XXXCodeToolBox
//
//  Created by LXF on 16/4/7.
//  Copyright © 2016年 LXF. All rights reserved.
//

#import <AppKit/AppKit.h>

@class XXXCodeToolBox;

static XXXCodeToolBox *sharedPlugin;

@interface XXXCodeToolBox : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end