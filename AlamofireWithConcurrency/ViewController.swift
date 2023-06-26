//
//  ViewController.swift
//  AlamofireWithConcurrency
//
//  Copyright (c) 2023 oasis444. All right reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = RequestTodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    
    @IBAction func getRequest(_ sender: UIButton) {
        viewModel.getTodoList()
    }
    
}

private extension ViewController {
    func configure() {
    }
}
