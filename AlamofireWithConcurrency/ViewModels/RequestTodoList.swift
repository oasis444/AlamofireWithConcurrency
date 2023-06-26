//
//  RequestTodoList.swift
//  AlamofireWithConcurrency
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import Foundation
import Alamofire

final class RequestTodoList {
    private let todoUrl = URL(string: "https://jsonplaceholder.typicode.com/todos")!
    private var todoList: [Todo] = []
    
    func getTodoList() {
        Task {
            do {
                let data = try await RequestTodoList()
                todoList = data
            } catch {
                print("error: \(error.localizedDescription)")
            }
        }
    }
}

private extension RequestTodoList {
    func RequestTodoList() async throws -> [Todo] {
        do {
            return try await AF.request(todoUrl).serializingDecodable().value
        } catch {
            throw error
        }
    }
}
