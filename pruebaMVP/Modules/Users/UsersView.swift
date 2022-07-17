//
//  UsersView.swift
//  pruebaMVP
//
//  Created by Brayam Mora on 16/07/22.
//

import UIKit

protocol UsersViewDelegate: AnyObject {
    func didClick()
}

class UsersView: UIView {
    
    private var firstButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Click", for: .normal)
        button.backgroundColor = .red
        return button
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 63/255, green: 140/255, blue: 33/255, alpha: 1)
        label.text = "Hola"
        return label
    }()
    
    weak var delegate: UsersViewDelegate?
    
    init() {
        super.init(frame: CGRect.zero)
        addConstraints()
        addActions()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        addSubview(titleLabel)
        let titleConstraints = [
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
        ]
        NSLayoutConstraint.activate(titleConstraints)
        
        addSubview(firstButton)
        let buttonConstraints = [
            firstButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            firstButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            firstButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            firstButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(buttonConstraints)
    }
    
    private func addActions() {
        firstButton.addTarget(self, action: #selector(didClick), for: .touchUpInside)
    }
    
    @objc private func didClick(sender: UIButton!) {
        delegate?.didClick()
    }
    
    
}
    
