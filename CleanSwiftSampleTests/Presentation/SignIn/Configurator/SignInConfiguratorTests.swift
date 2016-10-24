//
//  SignInSignInConfiguratorTests.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import XCTest
@testable import CleanSwiftSample

class SignInModuleConfiguratorTests: XCTestCase {

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
        let viewController = SignInViewControllerMock()
        let configurator = SignInModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SignInViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SignInPresenter, "output is not SignInPresenter")

        let presenter: SignInPresenter = viewController.output as! SignInPresenter
        XCTAssertNotNil(presenter.view, "view in SignInPresenter is nil after configuration")
        
        let interactor: SignInInteractor = presenter.interactor as! SignInInteractor
        XCTAssertNotNil(interactor.output, "output in SignInInteractor is nil after configuration")
    }

    class SignInViewControllerMock: SignInViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState(withArguments args: NamedValuesType, completion: ModuleCompletionHandler?) {
            setupInitialStateDidCall = true
        }
    }
}
