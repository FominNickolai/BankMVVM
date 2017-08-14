//
//  AmountValidator.swift
//  BankMVVM
//
//  Created by Fomin Mykola on 8/14/17.
//  Copyright © 2017 Fomin Mykola. All rights reserved.
//

import UIKit

class AmountValidator: NSObject {
    func validate(_ value:String) -> Bool {
        
        if ((value.characters.count < 1) || (value.characters.count > 20)) {
            return false
        }
        
        let whitespace = Set(" ".characters)
        let isContainingCharacters = value.characters.filter {whitespace.contains($0)}
        if isContainingCharacters.count > 0 {
            return false
        }
        
        let numbers = Set("0123456789".characters)
        let isContainingnumbers = value.characters.filter {numbers.contains($0)}
        if isContainingnumbers.count == 0 {
            return false
        }
        
        let specialCharacters = Set("+-,!#$£%^&*();\\/|<>\"".characters)
        if specialCharacters.contains(value.characters.first!) {
            return false
        }
        
        if specialCharacters.contains(value.characters.last!) {
            return false
        }
        
        if ((value.characters.first! == ".".characters.first!) || (value.characters.last! == ".".characters.first!)) {
            return false
        }
        let isContainingSpecialCharacters = value.characters.filter {specialCharacters.contains($0)}
        if isContainingSpecialCharacters.count > 0 {
            return false
        }
        
        guard let regexValidator = try? NSRegularExpression(pattern: "([A-Za-z])", options: .caseInsensitive) else {
            return false
        }
        
        if regexValidator.numberOfMatches(in: value,
                                          options: NSRegularExpression.MatchingOptions.reportCompletion,
                                          range: NSMakeRange(0, value.characters.count)) > 0 {
            return false
        }
        
        return true
    }
}
