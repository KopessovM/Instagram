//
//  Posts.swift
//  Instagram
//
//  Created by Madi Kupesov on 1/30/21.
//

import Foundation
import UIKit

class Posts {
    
    var ava: UIImage?
    var accountTitle: String?
    var post: UIImage?
    
    init(ava: UIImage, accountTitle: String, post: UIImage) {
        self.ava = ava
        self.accountTitle = accountTitle
        self.post = post
    }
    
}
