//
//  Story.swift
//  Togehter 48
//
//  Created by Central States SER 02 on 8/1/19.
//  Copyright © 2019 SER-YCL8. All rights reserved.
//

import UIKit

class Story
{// creating New variable called featured image and initializing with a UI Image
    var featuredImage: UIImage
    
   
    
    init(featuredImage: UIImage)
        
{
    self.featuredImage = featuredImage
    
    
}
    static func fetchStories() -> [Story]
{
    return [
        Story(featuredImage: UIImage(named: "1")!),
        Story(featuredImage: UIImage(named: "2")!),
        Story(featuredImage: UIImage(named: "3")!),
        Story(featuredImage: UIImage(named: "4")!),
    ]
}
}
