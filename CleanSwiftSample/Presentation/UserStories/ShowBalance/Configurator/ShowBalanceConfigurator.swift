//
//  ShowBalanceShowBalanceConfigurator.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 02/11/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class ShowBalanceModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ShowBalanceViewController {
            configure(viewController)
        }
    }

    private func configure(_ viewController: ShowBalanceViewController) {
        let presenter = ShowBalancePresenter()
        presenter.view = viewController
        
        let interactor = ShowBalanceInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
