//
//  NSDate+Difference.swift
//  FitApp
//
//  Created by Sirajudheen on 9/13/15.
//  Copyright (c) 2015 QBurst All rights reserved.
//

import Foundation

extension NSDate {
    
    /**
    Calculate difference between two dates.
    
    - Parameter firstDate:   First date
    - Parameter secondDate: Second date
    
    - Returns: NSDateComponents between first date and second date
    */
    
    class func differenceBetweenDates(#firstDate : NSDate, secondDate : NSDate) -> NSDateComponents? {
        return NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitDay, fromDate: firstDate, toDate: secondDate, options: nil)
    }
    
    class func dateAfterAddingDateOffset(initialDate : NSDate, offset : Int) -> NSDate {
        var components = NSDateComponents()
        components.setValue(offset, forComponent: NSCalendarUnit.CalendarUnitDay);
        return NSCalendar.currentCalendar().dateByAddingComponents(components, toDate: initialDate, options: NSCalendarOptions(0))!
    }
    
    func isBetweenTwoDates(firstDate : NSDate, secondaDate : NSDate) -> Bool {
        if firstDate.compare(self) == .OrderedAscending && secondaDate.compare(self) == .OrderedDescending {
            return true
        }
        return false
    }
    
    func isInbetween(firstDate : NSDate, secondDate : NSDate) -> Bool {
        if self.compare(firstDate) == NSComparisonResult.OrderedAscending {
            return false
        }
        if self.compare(secondDate) == NSComparisonResult.OrderedDescending {
            return false
        }
        return true
    }
}



