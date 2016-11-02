//
//  ShowBalanceShowBalancePresenter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 02/11/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import Foundation
import PromiseKit
import CocoaLumberjack

class ShowBalancePresenter {

    weak var view: ShowBalanceViewInput!
    var interactor: ShowBalanceInteractorInput!
    var moduleCompletion: ModuleCompletionHandler?
}

// MARK:
extension ShowBalancePresenter: ShowBalanceViewOutput {
    
    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
        moduleCompletion = completion
    }

    func viewIsReady() {
            
    }
}

// MARK:
extension ShowBalancePresenter: ShowBalanceInteractorOutput {
        
}
