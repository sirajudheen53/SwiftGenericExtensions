//
//  NSDate+StringConversion.swift
//  FitApp
//
//  Created by Sirajudheen on 8/3/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

let kSQLiteDateFormat : String = "yyyy/MM/dd HH:mm:ss Z"
let dateFormat = [kSQLiteDateFormat,
    "MMM-YYYY",
    "yyyy-MM-dd",
    "yyyy-12",
    "yyyy/MM/dd",
    "yyyy/mm/dd",
    "yyyy-MM-dd HH:mm:ss Z",
    "yyyy-MM-dd HH:mm:ss K",
    "yyyy-MM-dd HH:mm:ss ZZ",
    "yyyy/MM/dd hh:mm a",
    "MM/dd/yyyy",
    "MM/dd/yyyy HH:mm:ss Z",
    "h:mm a",
    "hh:mm a",
    "yyyy/MM/dd HH:mm:ss Z",
    "yyyy/MM/dd h:mm a",
    "MM/dd/yyyy h:mm a",
    "yyyy-MM-dd h:mm a",
    "yyyy-MM-dd'T'hh:mm:ss",
    "yyyy/MM/dd h a",
    "yyyy-MM-dd'T'HH:mm:ss","dd MMM, yyyy","dd-MM-yyyy HH:mm", "EEE, MMM dd"]

extension NSDate {
    
    /**
    Return string value of a date object in the specified format.
    
    - Parameter format: Required format
    
    - Returns: String value of the NSDate object.
    */
    
    func stringValue(#format : String) -> String {
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = format //format style. Browse online to get a format that fits your needs.
        var dateString = dateFormatter.stringFromDate(self)
        return dateString
    }


    /**
    Create a NSDate object from the provided date string
    
    - Parameter dateString: Date string to be converted to NSDate.
    
    - Returns: A new NSDate object from the provided date string.
    */
    
    class func dateFromString(dateString : String) -> NSDate? {
        if let dateString : String = dateString as String? {
            
            let dateFormatter : NSDateFormatter = NSDateFormatter()
            for format in dateFormat {
                
                dateFormatter.dateFormat = format
                if  let date : NSDate = dateFormatter.dateFromString(dateString) {
                    return date
                }
            }
        }
        return nil
    }

    /**
    Create a NSDate object after removing time components
    
    - Returns: A new NSDate object after removing time components
    */
    
    func dateAfterRemovingTime() -> NSDate {
        let calendarUnit : NSCalendarUnit = NSCalendarUnit.CalendarUnitDay | NSCalendarUnit.CalendarUnitMonth | NSCalendarUnit.CalendarUnitYear
        let dateComponents = NSCalendar.currentCalendar().components(calendarUnit, fromDate: self)
        dateComponents.hour = 0
        dateComponents.minute = 0
        dateComponents.second = 0
        dateComponents.timeZone = NSTimeZone.systemTimeZone()
        let requiredDate = NSCalendar.currentCalendar().dateFromComponents(dateComponents)
        return requiredDate!
    }
}