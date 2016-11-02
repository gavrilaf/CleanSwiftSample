//
//  UserProfileUserProfileViewInput.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 20/10/2016.
//  Copyright © 2016 Public. All rights reserved.
//

/**
 *  Presenter -> View
 */
protocol UserProfileViewInput: class {
    func update(userName: String)
}
