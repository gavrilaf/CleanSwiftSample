//
//  UserProfileUserProfileConfigurator.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class UserProfileModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? UserProfileViewController {
            configure(viewController)
        }
    }

    private func configure(_ viewController: UserProfileViewController) {
        let presenter = UserProfilePresenter()
        presenter.view = viewController
        
        let interactor = UserProfileInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
