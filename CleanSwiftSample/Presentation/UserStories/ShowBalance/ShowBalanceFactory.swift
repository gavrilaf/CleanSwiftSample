//
//  ShowBalanceShowBalanceFactory.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 02/11/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit
import CocoaLumberjack

struct ShowBalanceFactory : ModuleFactoryProtocol {

    private static let _shared = ShowBalanceFactory()

    static var shared: ShowBalanceFactory {
        return _shared
    }

    // MARK: ModuleFactoryProtocol
    var moduleURN: String {
        return "ShowBalance"
    }

    func createModule(arguments: NamedValuesType, completion: ModuleCompletionHandler?) -> UIViewController {
        DDLogDebug("Opening module '\(storyboardId)' with controller '\(initialControllerID)'")
        
        let storyboard = UIStoryboard(name: storyboardId, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: initialControllerID)
        
        let moduleInput = controller as? ModuleInputProtocol
        if let moduleInput = moduleInput {
            moduleInput.setupInitialState(withArguments: arguments, completion: completion)
        } else {
            fatalError("\(initialControllerID) moduleInput == nil")
        }
        
        return controller
    }

    // MARK: Helpers
    //func createModuleURN(arguments) -> String {
    //    return URNBuilder(string: moduleURN).buildWithArgs(args: [arguments])
    //}
    
    // MARK:
    let storyboardId = "ShowBalance"
    let initialControllerID = "ShowBalanceViewController"
}
