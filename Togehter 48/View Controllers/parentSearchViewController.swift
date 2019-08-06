//
//  parentSearchViewController.swift
//  Togehter 48
//
//  Created by SER-YCL8 on 7/29/19.
//  Copyright © 2019 SER-YCL8. All rights reserved.
//

import UIKit

class parentSearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    let kidName = ["Abril " , "Alexis " , "Vanessa " , "Jaden " , "Casey " , "Violet " , " Eric " , "Stephine " , "Lisbeth " , " Angel " , " Evelyn " , " Daniela " , "Jocelyn"]
    var searchKid = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
extension parentSearchViewController: UITableViewDataSource, UIScrollViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
         return   searchKid.count
        } else {
        return kidName.count
        }
        
        
    
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching {
            cell?.textLabel?.text = searchKid[indexPath.row]
        }else {
            cell?.textLabel?.text = kidName[indexPath.row]
            
        }
        return cell!
}
}
    extension parentSearchViewController: UISearchBarDelegate {
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
           
            
             searchKid = kidName.filter({$0.prefix(searchText.count) == searchText})
        
        searching = true
        tblView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tblView.reloadData()
        }
}
