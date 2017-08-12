//
//  FirstNameValidator.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/11/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class FirstNameValidator: NSObject {

    func validate(_ value: String) -> Bool {
        
        if value.characters.count < 2 || value.characters.count > 10 {
            return false
        }
        
        let whitespace = Set(" ".characters)
        let isContainWhiteSpace = value.characters.filter { whitespace.contains($0) }
        if isContainWhiteSpace.count > 0 {
            return false
        }
        
        let numbers = Set("0123456789".characters)
        let isContainNumbers = value.characters.filter { numbers.contains($0) }
        if isContainNumbers.count > 0 {
            return false
        }
        
        guard let regexValidator = try? NSRegularExpression(pattern: "([A-Za-z'])", options: .caseInsensitive) else {
            return false
        }
        
        if regexValidator.numberOfMatches(in: value, options: NSRegularExpression.MatchingOptions.reportCompletion, range: NSMakeRange(0, value.characters.count)) > 0 {
            return true
        }
        
        return false
    }
    
}
