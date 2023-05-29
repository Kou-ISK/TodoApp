//
//  TodoListView.swift
//  TodoApp
//
//  Created by 井坂航 on 2023/05/29.
//

import SwiftUI

struct TodoListView: View {
    @StateObject var todoListVM = TodoListViewModel()
    var body: some View {
        List{
            ForEach(todoListVM.todoList){
                item in
                Text(item.title)
            }.onDelete(perform:todoListVM.onDelete)
                    .onMove(perform:todoListVM.onMove)
        }.navigationTitle("Todo List")
                    .navigationBarItems(leading: EditButton(), trailing:NavigationLink(destination:{
            AddTodoView{todo in
                todoListVM.onSave(item:todo)
            }
        },label:{
            Text("Add items")
        }))
    }
                                }
                                
struct TodoListView_Previews: PreviewProvider {
                    static var previews: some View {
                        NavigationView{
                            TodoListView()
                        }
                    }
                }
