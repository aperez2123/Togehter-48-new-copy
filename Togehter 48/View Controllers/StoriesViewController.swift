//
//  storiesViewController.swift
//  Togehter 48
//
//  Created by SER-YCL8 on 7/25/19.
//  Copyright © 2019 SER-YCL8. All rights reserved.
//

import UIKit

class StoriesViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var stories = Story.fetchStories()
    let cellScaling: CGFloat = 0.6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // sizing collection cell
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScaling)
        let cellHieght = floor(screenSize.height * cellScaling)
        
        let insetX = (view.bounds.width - cellWidth) / 2.0
        let insetY = (view.bounds.height - cellHieght) / 2.0
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHieght)
        collectionView?.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
        collectionView?.dataSource = self
        collectionView?.delegate = self
        
    }
}
    
    
extension StoriesViewController : UICollectionViewDataSource
    {
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return stories.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell
        {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath) as!
            StoryCollectionViewCell
            
            cell.story = stories[indexPath.item]
           
            return cell
            
        }
        }
    
    
    extension StoriesViewController : UIScrollViewDelegate, UICollectionViewDelegate
    {
        func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint,
            targetContentOffset: UnsafeMutablePointer<CGPoint>)
        {
            // setting layout of the collection View
            let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
            let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
            
            var offset = targetContentOffset.pointee
            let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
            let roundedIndex = round(index)
            
            offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y:
            -scrollView.contentInset.top)
            targetContentOffset.pointee = offset
        }
    }

    
/*
    @IBOutlet weak var scrollView: UIScrollView!
   override func viewDidLoad() {
    super.viewDidLoad()
        
        
        var V1: storiesViewController = storiesViewController(nibName: "storiesViewController", bundle: nil)
        var V2: View2 = View2(nibName: "View2", bundle: nil)
        
        self.addChildViewController(V1)
        self.scrollView.addSubview(V1.view)
        V1.didMove(toParentViewController: self)
        
        self.addChildViewController(V2)
        self.scrollView.addSubview(V2.view)
        V2.didMove(toParentViewController: self)
        
        var V2Frame : CGRect = V2.view.frame
        V2Frame.origin.x = self.view.frame.width
        V2.view.frame = V2Frame
        
        self.scrollView.contentSize = CGSize(width: 300, height: 300)
        
        
    }
    
    
*/
        
    

  
    

 


