//
//  PostCell.swift
//  beam
//
//  Created by Powermobile on 21-07-15.
//  Copyright © 2015 Powermobile. All rights reserved.
//

import Foundation
import Snoo

protocol PostCell: class {
    
    var post: Post? { get set }
    
    var onDetailView: Bool { get set }
    
}

extension PostCell {
    
    var content: Content? {
        set {
            if let comment = newValue as? Comment {
                self.post = comment.post
            } else {
                self.post = newValue as? Post
            }
        }
        get {
            return self.post
        }
    }
}
