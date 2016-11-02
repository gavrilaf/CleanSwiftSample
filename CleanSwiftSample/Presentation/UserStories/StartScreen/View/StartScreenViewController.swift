//
//  StartScreenStartScreenViewController.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {

    var output: StartScreenViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    @IBAction func didClickOpenSignIn(_ sender: AnyObject) {
        output.didClickOpenSignIn()
    }
    
}

// MARK:
extension StartScreenViewController: ModuleInputProtocol {

    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
        output.setupInitialState(withArguments: args, completion: completion)
    }
}

// MARK:
extension StartScreenViewController: StartScreenViewInput {

}
