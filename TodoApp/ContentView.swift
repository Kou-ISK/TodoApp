//
//  ContentView.swift
//  TodoApp
//
//  Created by 井坂航 on 2023/05/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
                    TodoListView()
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
