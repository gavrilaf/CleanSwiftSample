//
//  SignInSignInViewOutput.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

/**
 * View -> Presenter
 */
protocol SignInViewOutput {

    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?)
	func viewIsReady()
    
    func didClickSignIn(withUser user: String)
}
