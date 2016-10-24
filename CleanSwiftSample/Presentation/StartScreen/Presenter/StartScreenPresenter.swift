//
//  StartScreenStartScreenPresenter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

class StartScreenPresenter {

    weak var view: StartScreenViewInput!
    var interactor: StartScreenInteractorInput!
}

// MARK:
extension StartScreenPresenter: StartScreenViewOutput {
    
    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
    
    }
    
    func viewIsReady() {
            
    }
    
    func didClickOpenSignIn() {
        AppRouter.shared.pushModule(byUrn: SignInFactory.shared.moduleURN, animated: true, completion: nil)
    }
}

// MARK:
extension StartScreenPresenter: StartScreenInteractorOutput {
        
}
