//
//  StartScreenStartScreenFactory.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit
import CocoaLumberjack

struct StartScreenFactory : ModuleFactoryProtocol {

    private static let _shared = StartScreenFactory()

    static var shared: StartScreenFactory {
        return _shared
    }

    // MARK: ModuleFactoryProtocol
    var moduleURN: String {
        return "StartScreen"
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

    // MARK:
    let storyboardId = "StartScreen"
    let initialControllerID = "StartScreenViewController"
}
