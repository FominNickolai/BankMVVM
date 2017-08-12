//
//  LastNameValidator.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/12/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class LastNameValidator: NSObject {

    func validate(_ value: String) -> Bool {
        if value.characters.count < 2 || value.characters.count > 10 {
            return false
        }
        
        let whitespace = Set(" ".characters)
        let isContainingWhitespaces = value.characters.filter({ whitespace.contains($0) })
        if isContainingWhitespaces.count > 0 {
            return false
        }
        
        let numbers = Set("0123456789".characters)
        let isContainingNumbers = value.characters.filter({ numbers.contains($0) })
        if isContainingNumbers.count > 0 {
            return false
        }
        
        let specialCharacters = Set("_+-.,!@#$%^&*();\\/|<>\"".characters)
        let isContainingSpecialCharacters = value.characters.filter({ specialCharacters.contains($0) })
        if isContainingSpecialCharacters.count > 0 {
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
