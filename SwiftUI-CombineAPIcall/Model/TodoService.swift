//
//  TodoService.swift
//  CombineApiCallDemo
//
//  Created by Ajit Satarkar on 23/11/23.
//

import Foundation
import Combine

class TodoService {
    
    private let baseURL = URL(string: "https://jsonplaceholder.typicode.com/todos")!
    
    func fetchTodos() -> AnyPublisher<[Todo], Error> {
        URLSession.shared.dataTaskPublisher(for: baseURL)
            .map(\.data)
            .decode(type: [Todo].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
}
