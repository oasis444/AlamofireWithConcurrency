//
//  ViewController.swift
//  AlamofireWithConcurrency
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TodoLabel: UILabel!
    
    let viewModel = RequestTodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func getRequest(_ sender: UIButton) {
        Task {
            let todos = await viewModel.getTodoList()
            guard let todo_last = todos.last else { return }
            TodoLabel.text = "\(todo_last)"
        }
    }
}
