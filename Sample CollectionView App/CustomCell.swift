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
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = .black
        return imageView
    }()
    
    private let randomLabel: UILabel = {
        let label = UILabel()
        label.text = "House"
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.clipsToBounds = true
        contentView.backgroundColor = .white
        contentView.addSubview(randomImageView)
        contentView.addSubview(randomLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureSubviews()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        randomLabel.text = nil
    }
    
    func configure(with label: String) {
        randomLabel.text = label
    }
    
    private func configureSubviews() {
        randomImageView.anchorDimensions(toView: [
            .top(anchor: contentView.topAnchor, padding: 0),
            .left(anchor: contentView.leadingAnchor, padding: 0),
            .right(anchor: contentView.trailingAnchor, padding: 0)
        ], size: .init(width: contentView.frame.width, height: contentView.frame.height / 1.2))
        
        randomLabel.anchorDimensions(toView: [
            .top(anchor: randomImageView.bottomAnchor, padding: 0),
            .left(anchor: contentView.leadingAnchor, padding: 5),
            .bottom(anchor: contentView.bottomAnchor, padding: 0),
            .right(anchor: contentView.trailingAnchor, padding: 5)
        ])
    }
}
