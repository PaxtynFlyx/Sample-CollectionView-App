//
//  CustomCell.swift
//  Sample CollectionView App
//
//  Created by Nuri Chun on 8/3/21.
//

import UIKit

class CustomCell: UICollectionViewCell {
    static let identifier = "cell"
    
    private let randomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        return imageView
    }()
    
    private let randomLabel: UILabel = {
        let label = UILabel()
        label.text = "sup"
        label.backgroundColor = .orange
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGreen
        contentView.addSubview(randomImageView)
        contentView.addSubview(randomLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
    }
}
