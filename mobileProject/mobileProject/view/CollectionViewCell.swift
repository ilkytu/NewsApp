//
//  CollectionViewCell.swift
//  mobileProject
//
//  Created by İlkay Türe on 4.10.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var categoryLabel: UILabel!
    func configure(with category: String) {
        categoryLabel.text = category
    }
}
