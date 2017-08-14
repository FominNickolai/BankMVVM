//
//  AccountNameValidator.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/14/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class AccountNameValidator: NSObject {
    func validate(_ value:String) -> Bool {
        if ((value.characters.count < 2) || (value.characters.count > 20)) {
            return false
        }
        
        guard let regexValidator = try? NSRegularExpression(pattern: "([A-Za-z0-9'])", options: .caseInsensitive) else {
            return false
        }
        
        if regexValidator.numberOfMatches(in: value,
                                          options: NSRegularExpression.MatchingOptions.reportCompletion,
                                          range: NSMakeRange(0, value.characters.count)) > 0 {
            return true
        }
        
        return false
    }
}
