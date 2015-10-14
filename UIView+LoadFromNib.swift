//
//  UIView+LoadFromNib.swift
//  FitApp
//
//  Created by Sirajudheen on 8/6/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UIView {
    
    /**
    Create a UIView object and bind it with corresponding nib file.
    
    - Throws: if the View class and nib file doesnot have same name
    
    - Returns: A UIView object binded with corresponding nib.
    */
    
    class func loadFromNib() -> UIView {
        let nibName = self.theClassName()
        let requiredView = NSBundle.mainBundle().loadNibNamed(nibName, owner: nil, options: nil)[0] as! UIView
        return requiredView
    }
}