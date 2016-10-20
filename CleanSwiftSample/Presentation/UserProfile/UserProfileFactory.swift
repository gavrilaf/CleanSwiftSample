//
//  UserProfileUserProfileFactory.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit
import CocoaLumberjack

struct UserProfileFactory : ModuleFactoryProtocol {

    private static let _shared = UserProfileFactory()

    static var shared: UserProfileFactory {
        return _shared
    }

    // MARK: ModuleFactoryProtocol
    var moduleURN: String {
        return "UserProfile"
    }

    func createModule(arguments: Dictionary<String, String>) -> UIViewController {
        DDLogDebug("Opening module '\(storyboardId)' with controller '\(initialControllerID)'")
        
        let storyboard = UIStoryboard(name: storyboardId, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: initialControllerID)
        
        let moduleInput = controller as? ModuleInputProtocol
        if let moduleInput = moduleInput {
            moduleInput.setupInitialState(withArguments: arguments)
        } else {
            fatalError("\(initialControllerID) moduleInput == nil")
        }
        
        return controller
    }

    // MARK:
    let storyboardId = "UserProfile"
    let initialControllerID = "UserProfileViewController"
}
