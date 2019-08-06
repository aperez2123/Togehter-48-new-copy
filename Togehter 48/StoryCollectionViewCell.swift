//
//  StoryCollectionViewCell.swift
//  Togehter 48
//
//  Created by Central States SER 02 on 8/1/19.
//  Copyright © 2019 SER-YCL8. All rights reserved.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    
    var story: Story? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI()
    {
        if let story = story {
            featuredImageView.image = story.featuredImage
        } else {
            featuredImageView.image = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        self.clipsToBounds = false
    }
}

