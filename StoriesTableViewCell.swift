//
//  StoriesTableViewCell.swift
//  Instagram
//
//  Created by Madi Kupesov on 1/30/21.
//

import UIKit

class StoriesTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var storiesArray = [Stories.init(stories: UIImage(named: "avatar1")!, title: "Madi"),
                      Stories.init(stories: UIImage(named: "avatar2")!, title: "Akzhol"),
                      Stories.init(stories: UIImage(named: "avatar3")!, title: "Diyas"),
                      Stories.init(stories: UIImage(named: "avatar4")!, title: "Sharapat"),
                      Stories.init(stories: UIImage(named: "avatar5")!, title: "Daulet")
    ]
    
    // Collection View: start >
        lazy var stories: UICollectionView = {
            let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width: 90, height: 90)
            layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 40, right: 0)
            layout.scrollDirection = .horizontal
        
            //layout.sectionFootersPinToVisibleBounds = false
            let myCollectionView: UICollectionView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
            myCollectionView.dataSource = self
            myCollectionView.delegate = self
            myCollectionView.backgroundColor = UIColor.white
            //myCollectionView.collectionViewLayout = layout
            myCollectionView.showsHorizontalScrollIndicator = false
            myCollectionView.isScrollEnabled = true
            myCollectionView.bounces = true
            myCollectionView.alwaysBounceHorizontal = true
            myCollectionView.register(StoriesCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
            //myCollectionView.alwaysBounceVertical = false
            //myCollectionView.setCollectionViewLayout(layout, animated: true)
            return myCollectionView
        }()

    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return storiesArray.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as? StoriesCollectionViewCell
            myCell?.storiesImageView.image = storiesArray[indexPath.row].storiesImageView
            myCell?.title.text = storiesArray[indexPath.row].title
            return myCell!
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
        {
            print("User tapped on item \(indexPath.row)")
        }
    // Collection View: < finish
        
    private func setUpViews() {
        addSubview(stories)
        stories.translatesAutoresizingMaskIntoConstraints = false
        
        stories.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        stories.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        stories.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        stories.heightAnchor.constraint(equalToConstant: 135).isActive = true
        stories.widthAnchor.constraint(equalToConstant: self.bounds.width).isActive = true

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
