//
//  ShowBalanceShowBalanceInitializer.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 21/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class ShowBalanceModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var showbalanceViewController: ShowBalanceViewController!

    override func awakeFromNib() {

        let configurator = ShowBalanceModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: showbalanceViewController)
    }

}
