# TimeWeekAgoSwift

This swift class gives you a function that compares 2 NSDates and gives you:  
now (if there is less than a minute between the dates)  
xm (if there is two minutes between the dates: 2m)  
xh (if there is two hours between the dates: 2m)  
xw (if there is two weeks between the dates: 2w)  

weeks is the highest component, so after 2 years it will be 104w.

# How to use

Add Time.swift into your project  

let dateString = Time.getTime(NSDate(), toDate: PastCompareDate)

