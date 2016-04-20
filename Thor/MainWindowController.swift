//
//  MainWindowController.swift
//  Thor
//
//  Created by AlvinZhu on 4/20/16.
//  Copyright © 2016 AlvinZhu. All rights reserved.
//

import Cocoa

class MainWindowController: TOLWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        SharedAppDelegate?.mainWindowController = self
        
        let appItem = TitleViewItem(itemIdentifier: appsTitleItemIdentifier)
        appItem.activeImage = NSImage(named: "AppStore-active")
        appItem.inactiveImage = NSImage(named: "AppStore")
        
        let settingsItem = TitleViewItem(itemIdentifier: settingsTitleItemIdentifier)
        settingsItem.activeImage = NSImage(named: "Settings-active")
        settingsItem.inactiveImage = NSImage(named: "Settings")
        
        let appsViewController = storyboard!.instantiateControllerWithIdentifier(String(AppsViewController)) as! AppsViewController
        insert(appItem, viewController: appsViewController)
        
        let settingsViewController = storyboard!.instantiateControllerWithIdentifier(String(SettingsViewController)) as! SettingsViewController
        insert(settingsItem, viewController: settingsViewController)
    }

}
