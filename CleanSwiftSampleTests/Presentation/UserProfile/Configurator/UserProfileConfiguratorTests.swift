//
//  UserProfileUserProfileConfiguratorTests.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

import XCTest
@testable import CleanSwiftSample

class UserProfileModuleConfiguratorTests: XCTestCase {

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
        let viewController = UserProfileViewControllerMock()
        let configurator = UserProfileModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "UserProfileViewController is nil after configuration")
        XCTAssertTrue(viewController.output is UserProfilePresenter, "output is not UserProfilePresenter")

        let presenter: UserProfilePresenter = viewController.output as! UserProfilePresenter
        XCTAssertNotNil(presenter.view, "view in UserProfilePresenter is nil after configuration")
        
        let interactor: UserProfileInteractor = presenter.interactor as! UserProfileInteractor
        XCTAssertNotNil(interactor.output, "output in UserProfileInteractor is nil after configuration")
    }

    class UserProfileViewControllerMock: UserProfileViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState(withArguments args: Dictionary<String, String>) {
            setupInitialStateDidCall = true
        }
    }
}
