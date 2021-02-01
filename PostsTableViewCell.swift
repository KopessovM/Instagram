//
//  PostsTableViewCell.swift
//  Instagram
//
//  Created by Madi Kupesov on 1/30/21.
//

import UIKit

class PostsTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = .lightGray
        return line
    }()
    
    lazy var ava: UIImageView = {
        let ava = UIImageView()
        ava.translatesAutoresizingMaskIntoConstraints = false
        ava.layer.borderWidth = 1.0
        ava.layer.masksToBounds = false
        ava.layer.borderColor = UIColor.black.cgColor
        ava.layer.cornerRadius = 12.5
        ava.clipsToBounds = true
        return ava
    }()
    
    lazy var accountTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        label.textColor = .black
        return label
    }()
    
    lazy var post: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    lazy var like: UIButton = {
        let like = UIButton()
        like.setBackgroundImage(UIImage(named: "like"), for: .normal)
        like.addTarget(self, action: #selector(likedPost), for: .touchUpInside)
        return like
    }()

    @objc func likedPost() {
        like.setBackgroundImage(UIImage(named: "liked"), for: .normal)
        print("okay")
    }
    
    lazy var comment: UIImageView = {
        let comment = UIImageView()
        comment.image = UIImage(named:"message")
        return comment
    }()
    lazy var share: UIImageView = {
        let share = UIImageView()
        share.image = UIImage(named:"share")
        return share
    }()
    lazy var save: UIImageView = {
        let save = UIImageView()
        save.image = UIImage(named:"save")
        return save
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        
        [line, ava, accountTitle, post, like, comment, share, save].forEach{
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
    
        line.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        line.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        line.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        line.widthAnchor.constraint(equalToConstant: self.bounds.width).isActive = true
        line.heightAnchor.constraint(equalToConstant: 0.7).isActive = true
        
        ava.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 10).isActive = true
        ava.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        ava.widthAnchor.constraint(equalToConstant: 25).isActive = true
        ava.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        accountTitle.centerYAnchor.constraint(equalTo: ava.centerYAnchor).isActive = true
        accountTitle.leadingAnchor.constraint(equalTo: ava.trailingAnchor, constant: 10).isActive = true
        accountTitle.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        post.topAnchor.constraint(equalTo: ava.bottomAnchor, constant: 10).isActive = true
        post.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        post.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        post.heightAnchor.constraint(equalToConstant: 414).isActive = true
      
        like.topAnchor.constraint(equalTo: post.bottomAnchor, constant: 5).isActive = true
        like.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        like.widthAnchor.constraint(equalToConstant: 25).isActive = true
        like.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        comment.topAnchor.constraint(equalTo: post.bottomAnchor, constant: 5).isActive = true
        comment.leadingAnchor.constraint(equalTo: like.trailingAnchor, constant: 10).isActive = true
        comment.widthAnchor.constraint(equalToConstant: 25).isActive = true
        comment.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        share.topAnchor.constraint(equalTo: post.bottomAnchor, constant: 5).isActive = true
        share.leadingAnchor.constraint(equalTo: comment.trailingAnchor, constant: 10).isActive = true
        share.widthAnchor.constraint(equalToConstant: 25).isActive = true
        share.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        save.topAnchor.constraint(equalTo: post.bottomAnchor, constant: 5).isActive = true
        save.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        save.widthAnchor.constraint(equalToConstant: 20).isActive = true
        save.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
    

}
