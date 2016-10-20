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
}

// MARK:
extension UserProfilePresenter: UserProfileViewOutput {
    
    func viewIsReady() {
            
    }
}

// MARK:
extension UserProfilePresenter: UserProfileInteractorOutput {
        
}
