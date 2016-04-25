//
//  HotKeysManager.h
//  Thor
//
//  Created by AlvinZhu on 4/25/16.
//  Copyright © 2016 AlvinZhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AppModel;

@interface HotKeysManager : NSObject

+ (instancetype)sharedManager;

- (void)registerHotKeys;
- (void)registerHotKeys:(NSArray<AppModel *> *)apps;
- (void)unregisterHotKeys;

@end
