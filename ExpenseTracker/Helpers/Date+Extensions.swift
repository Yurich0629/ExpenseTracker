//
//  Date+Extensions.swift
//  ExpenseTracker
//
//  Created by Илья Десятов on 12.04.2025.
//

import SwiftUI

extension Date {
    var startOfMoth: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: self)
        
        return calendar.date(from: components) ?? self
    }
    
    var endOfMoth: Date {
        let calendar = Calendar.current
        
        return calendar.date(byAdding: .init(month: 1, minute: -1), to: self.startOfMoth) ?? self
    }
}
