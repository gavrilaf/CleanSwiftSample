//
//  SignInSignInViewController.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    // MARK: Handlers
    
    @IBAction func didClickSignIn(_ sender: AnyObject) {
        if let text = textField.text  {
            output.didClickSignIn(withUser: text)
        }
    }
    
    
    // MARK:
    var output: SignInViewOutput!
    
    // MARK: Outlets
    
    @IBOutlet weak var textField: UITextField!
    
}

// MARK:
extension SignInViewController: ModuleInputProtocol {

    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
        output.setupInitialState(withArguments: args, completion: completion)
    }
}

// MARK:
extension SignInViewController: SignInViewInput {

}
