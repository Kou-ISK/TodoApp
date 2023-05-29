//
//  TodoModel.swift
//  TodoApp
//
//  Created by 井坂航 on 2023/05/29.
//

import Foundation

struct TodoModel: Identifiable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title:String, isCompleted:Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func onCompletedToggle() -> TodoModel{
        return TodoModel(id:id,title: title, isCompleted: !isCompleted)
    }
}
