//
//  StartScreenStartScreenInitializer.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class StartScreenModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var startscreenViewController: StartScreenViewController!

    override func awakeFromNib() {

        let configurator = StartScreenModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: startscreenViewController)
    }

}
