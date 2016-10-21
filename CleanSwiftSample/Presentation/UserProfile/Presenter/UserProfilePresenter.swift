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
}

// MARK:
extension UserProfilePresenter: UserProfileViewOutput {
    
    func viewIsReady() {
        view.update(userName: user)
    }
    
    func setup(user: String) {
        self.user = user
    }
}

// MARK:
extension UserProfilePresenter: UserProfileInteractorOutput {
        
}
