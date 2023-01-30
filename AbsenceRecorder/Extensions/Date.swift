//
//  Date.swift
//  AbsenceRecorder
//
//  Created by MIKHAEL LUKYANOV on 30/01/2023.
//

import Foundation

extension Date {
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
    func previousDate() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
    func nextDate() -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
    
}
