//
//  TransactionDescriptionValidator.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/14/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class TransactionDescriptionValidator: NSObject {
    func validate(_ value:String) -> Bool {
        
        if ((value.characters.count < 1) || (value.characters.count > 20)) {
            return false
        }
        
        return true
    }
}
