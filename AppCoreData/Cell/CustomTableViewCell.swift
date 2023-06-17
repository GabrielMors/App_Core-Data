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
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
