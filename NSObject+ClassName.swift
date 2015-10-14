//
//  NSObject+ClassName.swift
//  FitApp
//
//  Created by Sirajudheen on 7/24/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import UIKit

extension NSObject {
    
    /**
    Create class name in String for the invoked class
    
    - Returns: A new string of the invoked class
    */
    
    static func theClassName() -> String {
        let classFullName = NSStringFromClass(self)
        let stringComponents = classFullName.componentsSeparatedByString(".")
        return stringComponents.last!
    }
}
