//
//  SignInSignInViewController.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    var output: SignInViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK:
extension SignInViewController: ModuleInputProtocol {

    func setupInitialState(withArguments args: Dictionary<String, String>) {
        
    }
}

// MARK:
extension SignInViewController: SignInViewInput {

}