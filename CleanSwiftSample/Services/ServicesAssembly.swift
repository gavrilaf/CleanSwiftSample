//
//  ServicesAssembly.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/21/16.
//  Copyright © 2016 gavrilaf. All rights reserved.
//

import Foundation

class ServicesAssembly: ServicesAssemblyProtocol {
    
    static let shared = ServicesAssembly()
    
    // MARK: ServicesAssemblyProtocol
    var settings: AppSettingsService!
    
    // MARK:
    func setup() {
        settings = AppSettingsServiceImpl()
    }
}
