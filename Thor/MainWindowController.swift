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
        
        window?.contentView?.layer?.masksToBounds = true
        
        let appItem = TitleViewItem(itemIdentifier: appsTitleItemIdentifier)
        appItem.activeImage = NSImage(named: "AppStore-active")
        appItem.inactiveImage = NSImage(named: "AppStore")
        
        let settingsItem = TitleViewItem(itemIdentifier: settingsTitleItemIdentifier)
        settingsItem.activeImage = NSImage(named: "Settings-active")
        settingsItem.inactiveImage = NSImage(named: "Settings")
        
        let shortcutListViewController = storyboard!.instantiateController(withIdentifier: String(ShortcutListViewController)) as! ShortcutListViewController
        insert(appItem, viewController: shortcutListViewController)
        
        let settingsViewController = storyboard!.instantiateController(withIdentifier: String(SettingsViewController)) as! SettingsViewController
        insert(settingsItem, viewController: settingsViewController)
    }

}
