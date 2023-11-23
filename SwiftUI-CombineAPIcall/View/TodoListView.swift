//
//  TodoListView.swift
//  SwiftUI-CombineAPIcall
//
//  Created by Ajit Satarkar on 23/11/23.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var viewModel = TodoViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.todos, id: \.id) { todo in
                Text(todo.title)
            }
            .onAppear {
                viewModel.fetchTodos()
            }
            .navigationBarTitle("Todos")
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}
