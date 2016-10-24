//
//  SignUpSignUpConfiguratorTests.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 24/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import XCTest
@testable import CleanSwiftSample

class SignUpModuleConfiguratorTests: XCTestCase {

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
        let viewController = SignUpViewControllerMock()
        let configurator = SignUpModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SignUpViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SignUpPresenter, "output is not SignUpPresenter")

        let presenter: SignUpPresenter = viewController.output as! SignUpPresenter
        XCTAssertNotNil(presenter.view, "view in SignUpPresenter is nil after configuration")
        
        let interactor: SignUpInteractor = presenter.interactor as! SignUpInteractor
        XCTAssertNotNil(interactor.output, "output in SignUpInteractor is nil after configuration")
    }

    class SignUpViewControllerMock: SignUpViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState(withArguments args: Dictionary<String, String>) {
            setupInitialStateDidCall = true
        }
    }
}
