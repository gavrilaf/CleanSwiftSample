//
//  ModuleFactoryProtocol.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/20/16.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

protocol ModuleFactoryProtocol {
    
    /**
     * Module URN ( ex. profile:{userID} )
     */
    var moduleURN: String { get }
    
    /**
     * Create module with arguments
     * Returns module root UIViewController, must implement ModuleInputProtocol. 
     */
    func createModule(arguments: Dictionary<String, String>) -> UIViewController
}
