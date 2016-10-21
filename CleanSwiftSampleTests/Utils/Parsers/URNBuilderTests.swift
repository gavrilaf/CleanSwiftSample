//
//  URNBuilderTests.swift
//  CleanSwiftSample
//
//  Created by Eugen Fedchenko on 10/21/16.
//  Copyright © 2016 gavrilaf. All rights reserved.
//

import XCTest
@testable import CleanSwiftSample

class URNBuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testSimpleBuilder() {
        let builder = URNBuilder(string: "profile:{user}")
        
        XCTAssert(builder.buildWithArgs(args: ["id123"]) == "profile:id123")
        XCTAssert(builder.buildWithArgs(args: []) == "profile:{user}")
        XCTAssert(builder.buildWithArgs(args: ["id123", "789"]) == "profile:id123")
    }
    
    func testComplexBuilder() {
        let builder = URNBuilder(string: "{id}:profile:list:{sort}:{type}")
        
        XCTAssert(builder.buildWithArgs(args: ["id123"]) == "id123:profile:list:{sort}:{type}")
        XCTAssert(builder.buildWithArgs(args: []) == "{id}:profile:list:{sort}:{type}")
        XCTAssert(builder.buildWithArgs(args: ["id1", "asc", "img"]) == "id1:profile:list:asc:img")
    }
    
    func testEmptyBuilder() {
        let builder = URNBuilder(string: "")
        
        XCTAssert(builder.buildWithArgs(args: ["id123"]) == "")
        XCTAssert(builder.buildWithArgs(args: []) == "")
    }
    
    
    
}
