//
//  SignInSignInPresenter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//
import CocoaLumberjack

class SignInPresenter {

    weak var view: SignInViewInput!
    var interactor: SignInInteractorInput!
}

// MARK:
extension SignInPresenter: SignInViewOutput {
    
    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
    
    }
    
    func viewIsReady() {
            
    }
    
    func didClickSignIn(withUser user: String) {
        let urn = UserProfileFactory.shared.createModuleURN(withUser: user)
        let router = AppRouter.shared
        router.pushModule(byUrn: urn, animated: true) { (args) in
            DDLogDebug("UserProfile module is closed")
            router.popCurrentController(animated: true)
        }
    }
}

// MARK:
extension SignInPresenter: SignInInteractorOutput {
        
}
