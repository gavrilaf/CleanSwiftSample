//
//  AppSettingsService.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/21/16.
//  Copyright © 2016 gavrilaf. All rights reserved.
//

import Foundation

protocol AppSettingsService {
    
    var appKey: String { get }
    var isFirstStart: Bool { get set }
}
