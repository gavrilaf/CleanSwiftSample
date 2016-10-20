//
//  SignInSignInPresenter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

class SignInPresenter {

    weak var view: SignInViewInput!
    var interactor: SignInInteractorInput!
}

// MARK:
extension SignInPresenter: SignInViewOutput {
    
    func viewIsReady() {
            
    }
}

// MARK:
extension SignInPresenter: SignInInteractorOutput {
        
}
