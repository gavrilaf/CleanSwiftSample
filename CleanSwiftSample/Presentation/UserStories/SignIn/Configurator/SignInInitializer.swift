//
//  SignInSignInInitializer.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class SignInModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var signinViewController: SignInViewController!

    override func awakeFromNib() {

        let configurator = SignInModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: signinViewController)
    }

}
