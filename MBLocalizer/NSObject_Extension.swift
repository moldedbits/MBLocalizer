//
//  NSObject_Extension.swift
//
//  Created by Amit kumar Swami on 02/04/16.
//  Copyright © 2016 moldedbits. All rights reserved.
//

import Foundation

extension NSObject {
    class func pluginDidLoad(bundle: NSBundle) {
        let appName = NSBundle.mainBundle().infoDictionary?["CFBundleName"] as? NSString
        if appName == "Xcode" {
        	if sharedPlugin == nil {
        		sharedPlugin = MBLocalizer(bundle: bundle)
        	}
        }
    }
}