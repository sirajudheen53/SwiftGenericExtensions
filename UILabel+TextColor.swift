//
//  UILabel+TextColor.swift
//  FitApp
//
//  Created by Sirajudheen on 8/12/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UILabel {
    
    /**
    Set text color to range of strings in UILabel
    
    - Parameter color:   color to apply
    - Parameter range: range to apply
    
    */
    
    func setTextColor(color : UIColor, range : NSRange) {
        let text = NSMutableAttributedString(attributedString: self.attributedText)
        text.addAttribute(NSForegroundColorAttributeName, value: color, range: range)
    }
}
