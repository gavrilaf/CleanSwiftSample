//
//  StartScreenStartScreenViewOutput.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

/**
 * View -> Presenter
 */
protocol StartScreenViewOutput {

    /**
        @author Eugen Fedchenko
        Notify presenter that view is ready
    */
	func viewIsReady()
    
    func didClickOpenSignIn()
}
