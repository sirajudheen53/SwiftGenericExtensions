//
//  UILabel+DynamicHeight.swift
//  FitApp
//
//  Created by Sirajudheen on 30/09/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UILabel {
    
    /**
    Calculate height of label on assigning a particular text.
    
    - Parameter text: Text to be assigned.
    - Parameter font: font of the label
    - Parameter width: width of the label
    
    - Returns: Calculated height of the label
    */
    
    class public func heightOnAssigingText(text : String, font : UIFont, width : CGFloat) -> CGFloat {
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
    }
}