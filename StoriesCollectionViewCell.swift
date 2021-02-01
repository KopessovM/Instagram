//
//  StoriesCollectionViewCell.swift
//  Instagram
//
//  Created by Madi Kupesov on 1/29/21.
//

import UIKit

class StoriesCollectionViewCell: UICollectionViewCell {
    
    let storiesImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.borderWidth = 1.0
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = 45
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let title: UILabel = {
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 15)
        title.textColor = .black
        title.textAlignment = .center
        return title
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
// MARK: - Constraints -
    
    func addViews() {
        [storiesImageView, title].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        storiesImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        storiesImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        storiesImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        storiesImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        title.topAnchor.constraint(equalTo: storiesImageView.bottomAnchor, constant: 10).isActive = true
        title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        title.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
    }
    
}
