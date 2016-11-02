//
//  ShowBalanceShowBalanceConfiguratorTests.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 02/11/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import XCTest
@testable import CleanSwiftSample

class ShowBalanceModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = ShowBalanceViewControllerMock()
        let configurator = ShowBalanceModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "ShowBalanceViewController is nil after configuration")
        XCTAssertTrue(viewController.output is ShowBalancePresenter, "output is not ShowBalancePresenter")

        let presenter: ShowBalancePresenter = viewController.output as! ShowBalancePresenter
        XCTAssertNotNil(presenter.view, "view in ShowBalancePresenter is nil after configuration")
        
        let interactor: ShowBalanceInteractor = presenter.interactor as! ShowBalanceInteractor
        XCTAssertNotNil(interactor.output, "output in ShowBalanceInteractor is nil after configuration")
    }

    class ShowBalanceViewControllerMock: ShowBalanceViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
            setupInitialStateDidCall = true
        }
    }
}
