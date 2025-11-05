//
//  SidebarView.swift
//  SoDo
//
//  Created by manish-ach on 05/11/2025.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var userCreatedGroups: [TaskGroup]
    @Binding var selection: TaskSection
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TaskSection.allCases) { selection in
                    Label(selection.displayName, systemImage: selection.iconName)
                        .tag(selection)
                }
            }
            Section("Your Groups") {
                ForEach($userCreatedGroups) { $group in
                    HStack {
                        Image(systemName: "folder")
                        TextField("New Group", text: $group.title)
                    }
                    .tag(TaskSection.list(group))
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Button(action: {
                let newGroup = TaskGroup(title: "New group")
                userCreatedGroups.append(newGroup)
            }, label: {
                Label("Add Group", systemImage: "plus.rectangle.on.folder")
            })
            .buttonStyle(.borderless)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: .constant(TaskGroup.examples()), selection: .constant(.all))
        .listStyle(.sidebar)
}
