//
//  TodoModel.swift
//  CombineApiCallDemo
//
//  Created by Ajit Satarkar on 23/11/23.
//

import Foundation

struct Todo: Decodable, Identifiable {
    let id: Int
    let title: String
    let completed: Bool
}
