//
//  UsersViewController.swift
//  pruebaMVP
//
//  Created by Brayam Mora on 16/07/22.
//

import UIKit

class UsersViewController: UIViewController {

    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 63/255, green: 140/255, blue: 33/255, alpha: 1)
        label.text = "Hola"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        let titleConstraints = [
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(titleConstraints)
    }
    

}
