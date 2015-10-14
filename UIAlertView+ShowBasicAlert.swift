//
//  UIAlertView+ShowBasicAlert.swift
//  FitApp
//
//  Created by Sirajudheen on 8/20/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension UIAlertView  {
    
    /**
    Show a basic alert with a title and a message
    
    - Parameter title:   Title to be displayed
    - Parameter message: Message to be displayed

    */
    
    class func showBasicAlert(title : String, message : String) {
        let alertView = UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: "Ok")
        alertView.show()
    }
}