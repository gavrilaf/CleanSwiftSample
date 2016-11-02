//
//  UserProfileUserProfileInitializer.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class UserProfileModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var userprofileViewController: UserProfileViewController!

    override func awakeFromNib() {

        let configurator = UserProfileModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: userprofileViewController)
    }

}
