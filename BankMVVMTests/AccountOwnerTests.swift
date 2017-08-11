//
//  AccountOwnerTests.swift
//  BankMVVMTests
//
//  Created by Fomin Mykola on 8/11/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import XCTest
@testable import BankMVVM

class AccountOwnerTests: XCTestCase {
    
    private let validFirstName = "Andrew"
    private let validLastName = "Hill"
    private let validEmailAddress = "giraffe.in.ua@gmail.com"
    
    private let invalidFirstName = "A"
    private let invalidLastName = "h"
    private let invalidEmailAddress = "qwerty@gmail.com"
    
    private let emptyString = ""
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAccountOwner_ValidFirstName_ValidLastName_ValidEmail_CanBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, emailAddress: validEmailAddress)
        XCTAssertNotNil(accountOwner)
    }
    
    func testAccountOwner_InvalidFirstName_ValidLastName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstName, lastName: validLastName, emailAddress: validEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_InvalidFirstName_InvalidLastName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstName, lastName: invalidLastName, emailAddress: validEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_InvalidFirstName_InvalidLastName_InvalidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: invalidFirstName, lastName: invalidLastName, emailAddress: invalidEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_ValidFirstName_InvalidLastName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidLastName, emailAddress: validEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_ValidFirstName_ValidLastName_InvalidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, emailAddress: invalidEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_ValidFirstName_InvalidLastName_InvalidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: invalidLastName, emailAddress: invalidEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_EmptyFirstName_ValidLastName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: emptyString, lastName: validLastName, emailAddress: validEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_ValidFirstName_EmptyLastName_ValidEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: emptyString, emailAddress: validEmailAddress)
        XCTAssertNil(accountOwner)
    }
    
    func testAccountOwner_ValidFirstName_ValidLastName_EmptyEmail_CanNotBeInstantiated() {
        let accountOwner = AccountOwner(firstName: validFirstName, lastName: validLastName, emailAddress: emptyString)
        XCTAssertNil(accountOwner)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
