//
//  ToDo.swift
//  ToDoList
//
//  Created by Wang Sige on 3/8/26.
//

import Foundation
import SwiftData

@MainActor

@Model
class ToDo {
    var item: String = ""
    var reminderIsOn = false
    var dueDate = Date.now + 60*60*24
    var notes = ""
    var isCompleted = false
    init(item: String = "", reminderIsOn: Bool = false, dueDate: Date = Date.now + 60*60*24, notes: String = "", isComplete: Bool = false) {
        self.item = item
        self.reminderIsOn = reminderIsOn
        self.dueDate = dueDate
        self.notes = notes
        self.isCompleted = isCompleted
    }    
    
}

extension ToDo  {
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: ToDo.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        container.mainContext.insert(ToDo(item: "Create SwiftData Lessons", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "Now with iOS 16 & Xcode 18", isComplete: false))
        container.mainContext.insert(ToDo(item: "Montenegrin Educators Talk", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "They want to learn about entrepreneurship", isComplete: false))
        container.mainContext.insert(ToDo(item: "Post Flyers for Swift in Santiago", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "To be held at UAH in Chile", isComplete: false))
        container.mainContext.insert(ToDo(item: "Prepare old iPhone for Lily", reminderIsOn: true, dueDate: Date.now + 60*60*24, notes: "She gets my old pro", isComplete: false))
        
        return container
    }
}
