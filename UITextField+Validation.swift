//
//  UITextField+Validation.swift
//  FitApp
//
//  Created by Sirajudheen on 8/20/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UITextField {
    
    /**
    Check whether UITextfield have a valid entry.
    
    - Returns: A Bool whether a UITextfield has a valid entry
    */
    
    func isEntryValid() -> Bool {
        var finalText = self.text
       if let inputText = self.text {
            let whiteSpace = NSCharacterSet.whitespaceAndNewlineCharacterSet()
            finalText = inputText.stringByTrimmingCharactersInSet(whiteSpace)
        }
        return ((finalText != nil) && (count(finalText) != 0)) ? true : false
    }
}

