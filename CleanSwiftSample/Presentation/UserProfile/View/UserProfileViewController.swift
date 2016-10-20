//
//  UserProfileUserProfileViewController.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    var output: UserProfileViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK:
extension UserProfileViewController: ModuleInputProtocol {

    func setupInitialState(withArguments args: Dictionary<String, String>) {
        
    }
}

// MARK:
extension UserProfileViewController: UserProfileViewInput {

}