//
//  UITextField+CustomPlaceholder.swift
//  FitApp
//
//  Created by Sirajudheen on 8/20/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UITextField {
    
    /**
    Show a custom place holder for a UITextfield
    
    - Parameter placeHolder:   The string to show a place holder.
    - Parameter textColor: Placeholder color.
    - Parameter font : Custom place holder font.
    
    */
    
    func customPlaceHolder(placeHolder : String, textColor : UIColor, font : UIFont) {
        let placeHolderAttributes = [NSFontAttributeName : font, NSForegroundColorAttributeName : textColor]
        self.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: placeHolderAttributes)
    }
}