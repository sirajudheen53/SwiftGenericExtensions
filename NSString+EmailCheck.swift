//
//  NSString+EmailCheck.swift
//  FitApp
//
//  Created by Sirajudheen on 8/3/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension String {
    
    /**
    Check whether a string is email or not

    - Returns: A boolean whether the string in email or not.
    */
    
    func isEmail() -> Bool {
        let regex = NSRegularExpression(pattern: "^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$", options: .CaseInsensitive, error: nil)
        return regex?.firstMatchInString(self, options: nil, range: NSMakeRange(0, count(self))) != nil
    }
}