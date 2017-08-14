//
//  AccountOwner.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/11/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class AccountOwner: NSObject {
    
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    init?(firstName: String, lastName: String, emailAddress: String, firstNameValidator: FirstNameValidator? = nil, lastNameValidator: LastNameValidator? = nil, emailAddressValidator: EmailAddressValidator? = nil) {
        
        let validator1 = firstNameValidator ?? FirstNameValidator()
        if validator1.validate(firstName) == false {
            return nil
        }
        
        let validator2 = lastNameValidator ?? LastNameValidator()
        if validator2.validate(lastName) == false {
            return nil
        }
        
        let validator3 = emailAddressValidator ?? EmailAddressValidator()
        if validator3.validate(emailAddress) == false {
            return nil
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
        
        super.init()
    }
}
