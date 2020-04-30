//
//  PlaceCell.swift
//  Annotations
//
//  Created by chandrasekhar yadavally on 4/29/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit

class PlaceCell: UITableViewCell {

    let nameLabel = NameLabel(textAlignment: .left, fontSize: 20)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func updateCell(with place: Place) {
        nameLabel.text = place.name
    }
    
    func configure() {
        backgroundColor = .systemBackground
        addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    
    }

}

