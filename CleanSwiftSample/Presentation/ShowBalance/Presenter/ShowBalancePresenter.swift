//
//  ShowBalanceShowBalancePresenter.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 21/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

class ShowBalancePresenter {

    weak var view: ShowBalanceViewInput!
    var interactor: ShowBalanceInteractorInput!
}

// MARK:
extension ShowBalancePresenter: ShowBalanceViewOutput {
    
    func viewIsReady() {
            
    }
}

// MARK:
extension ShowBalancePresenter: ShowBalanceInteractorOutput {
        
}
