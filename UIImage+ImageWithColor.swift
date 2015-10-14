//
//  UIImage+ImageWithColor.swift
//  FitApp
//
//  Created by Sirajudheen on 8/10/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UIImage {
    
    /**
    Create a UIImage from provided UIColor object
    
    - Parameter color: Color to be converted to UIImage
    
    - Returns: A new UIImage from the provided color
    */
    class func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRectMake(0.0, 0.0, 1.0, 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        CGContextSetFillColorWithColor(context, color.CGColor)
        CGContextFillRect(context, rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
}