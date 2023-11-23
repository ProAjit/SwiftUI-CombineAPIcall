//
//  TodoViewModel.swift
//  CombineApiCallDemo
//
//  Created by Ajit Satarkar on 23/11/23.
//

import Foundation
import Combine


class TodoViewModel: ObservableObject {
    
    private var cancellables = Set<AnyCancellable>()
    private let todoService = TodoService()
    
    @Published var todos: [Todo] = []
    
    func fetchTodos() {
        todoService.fetchTodos()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { _ in }) { todos in
                self.todos = todos
            }
            .store(in: &cancellables)
    }
    
}
