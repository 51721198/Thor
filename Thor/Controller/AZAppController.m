//
//  AZAppController.m
//  Thor
//
//  Created by Alvin on 13-10-17.
//  Copyright (c) 2013年 Alvin. All rights reserved.
//

#import "AZAppController.h"
#import "AZPrefsWindowController.h"

@implementation AZAppController

- (void)awakeFromNib
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(showPreferencePanel:) name:AZShowPreferencePanelNotification object:nil];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (IBAction)showPreferencePanel:(id)sender
{
    [[NSRunningApplication currentApplication] activateWithOptions:(NSApplicationActivateAllWindows | NSApplicationActivateIgnoringOtherApps)];
    [[AZPrefsWindowController sharedPreferenceWindowController] showWindow:nil];
}

- (IBAction)showAboutPanel:(id)sender
{
    [[NSRunningApplication currentApplication] activateWithOptions:(NSApplicationActivateAllWindows | NSApplicationActivateIgnoringOtherApps)];
    [[AZPrefsWindowController sharedPreferenceWindowController] loadViewForIdentifier:@"Updates"];
}

- (IBAction)exit:(id)sender
{
    [NSApp terminate:self];
}

@end
