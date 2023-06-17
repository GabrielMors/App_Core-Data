//
//  Screen.swift
//  AppCoreData
//
//  Created by Gabriel Mors  on 17/06/23.
//

import UIKit

class Screen: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.showsVerticalScrollIndicator = false
//        tableView.register(<#T##UINib?#>, forCellReuseIdentifier: <#T##String#>)
        return tableView
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.placeholder = " type your name"
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    lazy var ageTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 18)
        textField.placeholder = " type your age"
        textField.autocorrectionType = .no
        textField.spellCheckingType = .no
        textField.keyboardType = .default
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    lazy var addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.setTitle("Add", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(tappedAddButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedAddButton() {
        
    }
    
    lazy var removeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.setTitle("Remove", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(tappedRemoveButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedRemoveButton() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        configConstraints()
    }
    
    private func addSubViews() {
        addSubview(tableView)
        addSubview(nameTextField)
        addSubview(ageTextField)
        addSubview(addButton)
        addSubview(removeButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.heightAnchor.constraint(equalToConstant: 400),
            
            nameTextField.topAnchor.constraint(equalTo: tableView.bottomAnchor, constant: 40),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            ageTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 40),
            ageTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ageTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            ageTextField.heightAnchor.constraint(equalToConstant: 40),
            
            addButton.centerXAnchor.constraint(equalTo: centerXAnchor.self),
            addButton.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: 10),
            addButton.widthAnchor.constraint(equalToConstant: 80),
            
            removeButton.centerXAnchor.constraint(equalTo: centerXAnchor.self),
            removeButton.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 10),
            removeButton.widthAnchor.constraint(equalToConstant: 80),
        ])
    }
}
