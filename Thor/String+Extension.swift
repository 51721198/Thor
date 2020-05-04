//
//  String+Extension.swift
//  Thor
//
//  Created by AlvinZhu on 4/29/16.
//  Copyright © 2016 AlvinZhu. All rights reserved.
//

import Foundation

extension String {

    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }

    func appendingPathComponent(_ str: String) -> String {
        return (self as NSString).appendingPathComponent(str)
    }

}
