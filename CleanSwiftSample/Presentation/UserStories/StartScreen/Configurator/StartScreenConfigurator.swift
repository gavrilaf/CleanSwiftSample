//
//  StartScreenStartScreenConfigurator.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class StartScreenModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? StartScreenViewController {
            configure(viewController)
        }
    }

    private func configure(_ viewController: StartScreenViewController) {
        let presenter = StartScreenPresenter()
        presenter.view = viewController
        
        let interactor = StartScreenInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
