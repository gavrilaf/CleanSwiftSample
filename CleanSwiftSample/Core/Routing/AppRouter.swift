//
//  AppRouter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/19/16.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit
import Compass
import CocoaLumberjack

struct AppRouter {
    
    static var shared: AppRouter {
        return _shared
    }
    
    static func setup(withNavigation controller: UINavigationController) {
        _shared = AppRouter(withNavigation: controller)
    }
    
    // Add all application modules here
    static var modulesList: Array<ModuleFactoryProtocol> {
        
        return [
            StartScreenFactory.shared,
            SignInFactory.shared,
            UserProfileFactory.shared
        ]
    }
    
    // MARK:
    
    func pushModule(byUrn urn: String, animated: Bool, completion: ModuleCompletionHandler?) {
        guard let url = URL(string:"\(Compass.scheme)\(urn)") else {
            fatalError("Invalid URN: \(urn)")
        }
        
        guard let controller = createModule(byUrl: url, completion: completion) else {
            fatalError("Can't create controller by URL: \(url)")
        }
        
        navigationController.pushViewController(controller, animated: animated)
    }
    
    func replaceViewStack(rootUrn urn: String, animated: Bool, completion: ModuleCompletionHandler?) {
        guard let url = URL(string:"\(Compass.scheme)\(urn)") else {
            fatalError("Invalid URN: \(urn)")
        }
        
        guard let controller = createModule(byUrl: url, completion: completion) else {
            fatalError("Can't create controller by URL: \(url)")
        }
        
        navigationController.setViewControllers([controller], animated: animated)
    }
    
    func popCurrentController(animated: Bool) {
        navigationController.popViewController(animated: animated)
    }
    
    
    // MARK:
    
    private init(withNavigation controller: UINavigationController) {
        navigationController = controller
        
        Compass.scheme = "cleanswift"
        
        Compass.routes = AppRouter.modulesList.map {
            return $0.moduleURN
        }
    }
    
    private func createModule(byUrl url: URL, completion: ModuleCompletionHandler?) -> UIViewController? {
        guard let location = Compass.parse(url: url) else {
            return nil
        }
        
        let arguments = location.arguments
        
        DDLogInfo("Create module with path: '\(location.path)',  arguments: '\(arguments)'")
        
        let factory = AppRouter.modulesList.first {
            return location.path == $0.moduleURN
        }
        
        return factory?.createModule(arguments: arguments, completion: completion)
    }
    
    // MARK:
    private let navigationController: UINavigationController
    
    private static var _shared: AppRouter!
}
