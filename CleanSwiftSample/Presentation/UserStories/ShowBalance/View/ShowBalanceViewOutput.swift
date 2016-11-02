//
//  ShowBalanceShowBalanceViewOutput.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 02/11/2016.
//  Copyright © 2016 Public. All rights reserved.
//

/**
 * View -> Presenter
 */
protocol ShowBalanceViewOutput {

	func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?)
  	func viewIsReady()
}
