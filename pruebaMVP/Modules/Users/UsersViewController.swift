//
//  UsersViewController.swift
//  pruebaMVP
//
//  Created by Brayam Mora on 16/07/22.
//

import UIKit

class UsersViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userView = UsersView()
        userView.delegate = self
        view = userView
    }
}

extension UsersViewController: UsersViewDelegate {
    func didClick() {
        print("Hiciste click")
    }
}
