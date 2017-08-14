//
//  AccountNumberValidator.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/14/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class AccountNumberValidator: NSObject {
    func validate(_ value:String) -> Bool {
        
        if value.characters.count != 8 {
            return false
        }
        
        let whitespace = Set(" ".characters)
        let isContainingCharacters = value.characters.filter {whitespace.contains($0)}
        if isContainingCharacters.count > 0 {
            return false
        }
        
        let uppercaseAlphabets = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)
        let isContainingUppercaseAlphabets = value.characters.filter {uppercaseAlphabets.contains($0)}
        if isContainingUppercaseAlphabets.count > 0 {
            return false
        }
        
        let lowercaseAlphabets = Set("abcdefghijklmnopqrstuvwxyz".characters)
        let isContainingLowercaseAlphabets = value.characters.filter {lowercaseAlphabets.contains($0)}
        if isContainingLowercaseAlphabets.count > 0 {
            return false
        }
        
        let specialCharacters = Set("_+-.,!@#$%^&*();\\/|<>\"".characters)
        let isContainingSpecialCharacters = value.characters.filter {specialCharacters.contains($0)}
        if isContainingSpecialCharacters.count > 0 {
            return false
        }
        
        guard let regexValidator = try? NSRegularExpression(pattern: "([0-9])", options: .caseInsensitive) else {
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
