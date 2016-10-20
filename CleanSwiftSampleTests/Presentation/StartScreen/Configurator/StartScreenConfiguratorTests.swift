//
//  StartScreenStartScreenConfiguratorTests.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import XCTest
@testable import CleanSwiftSample

class StartScreenModuleConfiguratorTests: XCTestCase {

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
        let viewController = StartScreenViewControllerMock()
        let configurator = StartScreenModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "StartScreenViewController is nil after configuration")
        XCTAssertTrue(viewController.output is StartScreenPresenter, "output is not StartScreenPresenter")

        let presenter: StartScreenPresenter = viewController.output as! StartScreenPresenter
        XCTAssertNotNil(presenter.view, "view in StartScreenPresenter is nil after configuration")
        
        let interactor: StartScreenInteractor = presenter.interactor as! StartScreenInteractor
        XCTAssertNotNil(interactor.output, "output in StartScreenInteractor is nil after configuration")
    }

    class StartScreenViewControllerMock: StartScreenViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState(withArguments args: Dictionary<String, String>) {
            setupInitialStateDidCall = true
        }
    }
}
