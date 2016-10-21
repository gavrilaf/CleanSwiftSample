//
//  ShowBalanceShowBalanceViewController.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 21/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import UIKit

class ShowBalanceViewController: UIViewController {

   	// MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: Handlers

    // MARK:
    var output: ShowBalanceViewOutput!

    // MARK: Outlets
    
}

// MARK:
extension ShowBalanceViewController: ModuleInputProtocol {

    func setupInitialState(withArguments args: Dictionary<String, String>) {
        
    }
}

// MARK:
extension ShowBalanceViewController: ShowBalanceViewInput {

}