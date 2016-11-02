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

    func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?)
    func viewIsReady()
    
    func didClickOpenSignIn()
}
