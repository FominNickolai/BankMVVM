//
//  MockSortingCodeValidator.swift
//  BankMVVMTests
//
//  Created by Fomin Mykola on 8/14/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit
import XCTest
@testable import BankMVVM

class MockSortingCodeValidator: SortingCodeValidator {
    private var expectation:XCTestExpectation?
    private var expectedValue:String?
    
    init(_ expectation:XCTestExpectation, expectedValue:String) {
        self.expectation = expectation
        self.expectedValue = expectedValue
        super.init()
    }
    
    override func validate(_ value:String) -> Bool {
        
        if let expectation = self.expectation,
            let expectedValue = self.expectedValue {
            if value.compare(expectedValue) == .orderedSame {
                expectation.fulfill()
            }
        }
        
        return super.validate(value)
    }
}
