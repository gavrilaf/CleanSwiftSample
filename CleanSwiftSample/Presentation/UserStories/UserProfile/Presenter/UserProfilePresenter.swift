//
//  UserProfileUserProfilePresenter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

class UserProfilePresenter {

    weak var view: UserProfileViewInput!
    var interactor: UserProfileInteractorInput!
    
    // MARK:
    var user: String!
    var moduleCompletion: ModuleCompletionHandler?
}

// MARK:
extension UserProfilePresenter: UserProfileViewOutput {
    
    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
        moduleCompletion = completion
        
        user = args["user"]
    }
    
    func viewIsReady() {
        view.update(userName: user)
    }
    
    func didCloseModuleClick() {
        if let completion = moduleCompletion {
            completion(nil)
        }
    }
    
}

// MARK:
extension UserProfilePresenter: UserProfileInteractorOutput {
        
}
