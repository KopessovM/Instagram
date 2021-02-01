//
//  Stories.swift
//  Instagram
//
//  Created by Madi Kupesov on 1/30/21.
//

import Foundation
import UIKit

class Stories {
    
    var storiesImageView: UIImage?
    var title: String?
    
    init(stories: UIImage, title: String) {
        self.storiesImageView = stories
        self.title = title
    }
    
}
