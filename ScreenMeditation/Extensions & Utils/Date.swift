//
//  Date.swift
//  ScreenMeditation
//
//  Created by Yevstafieva Yevheniia on 12.07.2023.
//

import Foundation

extension Date {
    var calendar: Calendar {
        var calendar = Calendar(identifier: .iso8601)
        calendar.locale = Locale(identifier: "en_US_POSIX")
        calendar.timeZone = TimeZone(abbreviation: "UTC") ?? calendar.timeZone
        return calendar
    }
    
    func from(year: Int, month: Int, day: Int) -> Date? {
        let calendar = Calendar(identifier: .gregorian)
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        return calendar.date(from: dateComponents) ?? nil
    }

    func getNumberOfWeeks() -> Int {
        calendar.range(of: .weekOfMonth, in: .month, for: self)?.count ?? 0
    }

    func daysInMonth() -> Int {
        let range = calendar.range(of: .day, in: .month, for: self)
        return range?.count ?? 0
    }

    func firstOfMonth() -> Date {
        let components = calendar.dateComponents([.year, .month], from: self)
        return calendar.date(from: components) ?? Date()
    }

    func weekDay() -> Int {
        let components = calendar.dateComponents([.weekday], from: self)
        return (components.weekday ?? 0) - 1
    }
}
