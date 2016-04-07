//
//  NSObject_Extension.m
//  XXXCodeToolBox
//
//  Created by LXF on 16/4/7.
//  Copyright © 2016年 LXF. All rights reserved.
//


#import "NSObject_Extension.h"
#import "XXXCodeToolBox.h"

@implementation NSObject (Xcode_Plugin_Template_Extension)

+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[XXXCodeToolBox alloc] initWithBundle:plugin];
        });
    }
}
@end
