//
//  NSString+Double.swift
//  FitApp
//
//  Created by Sirajudheen on 9/10/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension String {
    
    /**
    Convert a string to double

    - Returns: A new Double value converted from the string
    */
    
    func toDouble() -> Double? {
        return NSNumberFormatter().numberFromString(self)?.doubleValue
    }
}