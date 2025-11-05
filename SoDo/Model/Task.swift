//
//  Task.swift
//  SoDo
//
//  Created by manish-ach on 05/11/2025.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date = Date(), details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Do homework", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
    
    static func examples() -> [Task] {
        [
            Task(title: "Buy groceries and snacks"),
            Task(title: "Finish the Rust project setup", isCompleted: true),
            Task(title: "Schedule dentist appointment", dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!),
            Task(title: "Read SwiftUI documentation"),
            Task(title: "Refactor Todo app code"),
            Task(title: "Submit class assignment", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 4, to: Date())!),
            Task(title: "Clean up desktop files"),
            Task(title: "Prepare slides for software engineering class", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!),
            Task(title: "Call ISP about internet issue"),
            Task(title: "Backup laptop data")
        ]
    }
}
