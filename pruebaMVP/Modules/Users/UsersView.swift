//
//  UsersView.swift
//  pruebaMVP
//
//  Created by Brayam Mora on 16/07/22.
//

import UIKit

class UsersView: UIView {
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 63/255, green: 140/255, blue: 33/255, alpha: 1)
        label.text = "Hola"
        return label
    }()
    
    init() {
        super.init(frame: CGRect.zero)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        addSubview(titleLabel)
        let titleConstraints = [
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(titleConstraints)
    }
}
