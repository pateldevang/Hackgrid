//
//  HackgridLogger.swift
//  Hackgrid
//
//  Created by Devang Patel on 24/02/20.
//  Copyright © 2020 ADG-VIT. All rights reserved.
//


import Foundation

class HackgridLogger {
    public static func log(_ items: Any...) {
        // Only allowing in DEBUG mode
        #if DEBUG
        debugPrint(items)
        #endif
    }
}
