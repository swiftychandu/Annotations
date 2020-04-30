//
//  PlaceCell.swift
//  Annotations
//
//  Created by chandrasekhar yadavally on 4/29/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit

class PlaceCell: UITableViewCell {

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    func configure() {
        backgroundColor = .systemBackground
    
    }

}

