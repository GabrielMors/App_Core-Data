//
//  CustomTableViewCell.swift
//  AppCoreData
//
//  Created by Gabriel Mors  on 17/06/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: CustomTableViewCell.self)
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubViews()
        configConstraints()
    }
    
    private func addSubViews() {
        addSubview(nameLabel)
        addSubview(ageLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupCell(data: Person) {
        nameLabel.text = data.name
        ageLabel.text = String(data.age)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor.self),
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 30),
            
            ageLabel.centerXAnchor.constraint(equalTo: centerXAnchor.self),
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            ageLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
}
