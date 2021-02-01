//
//  ViewController.swift
//  Instagram
//
//  Created by Madi Kupesov on 1/29/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var postsArray = [
                 Posts.init(ava: UIImage(named: "avatar1")!, accountTitle: "Madi", post: UIImage(named: "avatar1")!),
                 Posts.init(ava: UIImage(named: "avatar2")!, accountTitle: "Akzhol", post: UIImage(named: "avatar2")!),
                 Posts.init(ava: UIImage(named: "avatar3")!, accountTitle: "Diyas", post: UIImage(named: "avatar3")!),
                 Posts.init(ava: UIImage(named: "avatar4")!, accountTitle: "Sharapat", post: UIImage(named: "avatar4")!),
                 Posts.init(ava: UIImage(named: "avatar5")!, accountTitle: "Doni", post: UIImage(named: "avatar5")!),
                 Posts.init(ava: UIImage(named: "avatar6")!, accountTitle: "Alibi", post: UIImage(named: "avatar6")!),
                 Posts.init(ava: UIImage(named: "avatar7")!, accountTitle: "Daulet", post: UIImage(named: "avatar7")!)
    ]
    
// Table View: start>
    lazy var posts: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .lightGray
        tableView.register(StoriesTableViewCell.self, forCellReuseIdentifier: "collectionCell")
        tableView.register(PostsTableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postsArray.count + 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 140
        }
        else {
            return 495
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let collectionCell = tableView.dequeueReusableCell(withIdentifier: "collectionCell", for: indexPath) as? StoriesTableViewCell
            
            return collectionCell!
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PostsTableViewCell
            cell?.ava.image = postsArray[indexPath.row - 1].ava
            cell?.accountTitle.text = postsArray[indexPath.row - 1].accountTitle
            cell?.post.image = postsArray[indexPath.row - 1].post
            return cell!
        }
    }
// Table View: <finish
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addNavBarImage()
        setUpViews()
    }
    
    func addNavBarImage() {
            let navController = navigationController!
            let image = UIImage(named: "InstagramLogo")
            let imageView = UIImageView(image: image)
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
            let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
            let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        }
    
// MARK: - Constraints -
    
    private func setUpViews() {
        
        view.addSubview(posts)
    
        posts.translatesAutoresizingMaskIntoConstraints = false
        
        posts.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        posts.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        posts.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        posts.heightAnchor.constraint(equalToConstant: view.bounds.height).isActive = true
        posts.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        
    }

}

