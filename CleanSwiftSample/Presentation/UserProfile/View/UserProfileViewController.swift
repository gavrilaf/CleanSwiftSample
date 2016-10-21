//
//  UserProfileUserProfileViewController.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit
import CocoaLumberjack

class UserProfileViewController: UIViewController {

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    // MARK: Handlers
    
    // MARK:
    var output: UserProfileViewOutput!
    
    // MARK: Outlets
    
    @IBOutlet weak var userLabel: UILabel!
}

// MARK:
extension UserProfileViewController: ModuleInputProtocol {

    func setupInitialState(withArguments args: Dictionary<String, String>) {
        DDLogDebug("UserProfile.setupInitialState: \(args)")
        
        if let user = args["user"] {
            output.setup(user: user)
        } else {
            fatalError("Invalid parameters")
        }
    }
}

// MARK:
extension UserProfileViewController: UserProfileViewInput {
    
    func update(userName: String) {
        userLabel.text = userName
    }
}
