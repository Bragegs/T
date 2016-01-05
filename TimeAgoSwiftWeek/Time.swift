import UIKit


class Time{
    class func getTime(fromDate:NSDate!,toDate:NSDate!)-> String{

        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd-HH-mm"
        
        let startDateString = dateFormatter.stringFromDate(fromDate)
        let endDateString = dateFormatter.stringFromDate(toDate)
        let startDate:NSDate = dateFormatter.dateFromString(startDateString)!
        let endDate:NSDate = dateFormatter.dateFromString(endDateString)!
        
        let cal = NSCalendar.currentCalendar()
        let unit:NSCalendarUnit = NSCalendarUnit.Day
        let components = cal.components(unit, fromDate: endDate, toDate: startDate, options: [])
        let days = components.day
        
        if days >= 7{
            let unit:NSCalendarUnit = NSCalendarUnit.WeekOfMonth
            let components = cal.components(unit, fromDate: endDate, toDate: startDate, options: [])
            return "\(components.weekOfMonth)w"
        }else if days==0{
            let unit:NSCalendarUnit = NSCalendarUnit.Hour
            let components = cal.components(unit, fromDate: endDate, toDate: startDate, options: [])
            
            if components.hour==0{
                let unit2:NSCalendarUnit = NSCalendarUnit.Minute
                let components2 = cal.components(unit2, fromDate: endDate, toDate: startDate, options: [])
                print(components2.minute)
                if components2.minute==0{
                    return "now"
                }else{
                    return "\(components2.minute)m"
                }
            }else{
                return "\(components.hour)h"
            }

        }
        return "\(days)d"
    }
}
