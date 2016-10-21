//
//  AppSettingsServiceImpl.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/21/16.
//  Copyright © 2016 gavrilaf. All rights reserved.
//

import Foundation

class AppSettingsServiceImpl : AppSettingsService {
    var appKey: String {
        return "*** 123456 ***"
    }
    var isFirstStart: Bool = false
}
