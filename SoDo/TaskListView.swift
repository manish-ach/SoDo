//
//  TaskListView.swift
//  SoDo
//
//  Created by manish-ach on 05/11/2025.
//

import SwiftUI

struct TaskListView: View {
    let title: String
    @Binding var tasks: [Task]
    
    var body: some View {
        List($tasks) { $task in
            TaskView(task: $task)
        }
        .toolbar {
            Button {
                tasks.append(Task(title: "new task"))
            } label: {
                Label("Add new Task", systemImage: "plus")
            }
        }
    }
}

#Preview {
    TaskListView(title: "All", tasks: .constant(Task.examples()))
}
