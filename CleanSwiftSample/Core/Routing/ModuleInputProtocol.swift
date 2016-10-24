//
//  ModuleConfiguratorProtocol.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/19/16.
//  Copyright © 2016 Public. All rights reserved.
//

import Foundation

protocol ModuleInputProtocol {
    
    /**
     * Configure module with arguments.
     * Calls form Module factory
     */
    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?)
}
