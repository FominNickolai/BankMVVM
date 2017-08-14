//
//  EmailAddressValidatorTests.swift
//  BankMVVMTests
//
//  Created by Fomin Mykola on 8/12/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import XCTest
@testable import BankMVVM

class EmailAddressValidatorTests: XCTestCase {
    
    fileprivate let emptyString = ""
    fileprivate let validEmailAddress1 = "a@b.com"
    fileprivate let validEmailAddress2 = "a@b.co.uk"
    fileprivate let validEmailAddress3 = "a@b.io"
    fileprivate let validEmailAddress4 = "andrew23.shaw@byteowl.io"
    fileprivate let invalidEmailAddress1 = "ab.com"
    fileprivate let invalidEmailAddress2 = "abcom"
    fileprivate let invalidEmailAddress3 = "a@b@com"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
   
}

//MARK: Empty string validation
extension EmailAddressValidatorTests {
    
    func testValidate_EmptyString_ReturnsFalse() {
        let validator = EmailAddressValidator()
        XCTAssertFalse(validator.validate(emptyString), "string can not be empty.")
    }
    
}

//MARK: Invalid email-address
extension EmailAddressValidatorTests {
    
    func testValidate_InvalidEmailAddress1_ReturnsFalse() {
        let validator = EmailAddressValidator()
        XCTAssertFalse(validator.validate(invalidEmailAddress1), "\(invalidEmailAddress1) is not a valid e-mail address.")
    }
    
    func testValidate_InvalidEmailAddress2_ReturnsFalse() {
        let validator = EmailAddressValidator()
        XCTAssertFalse(validator.validate(invalidEmailAddress2), "\(invalidEmailAddress2) is not a valid e-mail address.")
    }
    
    func testValidate_InvalidEmailAddress3_ReturnsFalse() {
        let validator = EmailAddressValidator()
        XCTAssertFalse(validator.validate(invalidEmailAddress3), "\(invalidEmailAddress3) is not a valid e-mail address.")
    }
    
    func testValidate_InvalidEmailAddress4_ReturnsFalse() {
        let validator = EmailAddressValidator()
        XCTAssertFalse(validator.validate(validEmailAddress4), "\(validEmailAddress4) is not a valid e-mail address.")
    }
    
}




























