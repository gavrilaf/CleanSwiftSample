//
//  SignInSignInConfigurator.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class SignInModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SignInViewController {
            configure(viewController)
        }
    }

    private func configure(_ viewController: SignInViewController) {
        let presenter = SignInPresenter()
        presenter.view = viewController
        
        let interactor = SignInInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
