//
//  ViewController.swift
//  autoChatRoom
//
//  Created by Central States SER 02 on 8/5/19.
//  Copyright © 2019 Central States SER 02. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    fileprivate let cellId = "id123"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Messages"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    return 10
}
    
    override func tablewView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath)
        cell.textLabel?.text = "We want to provide a longer string that is actually going to wrap onto the next line and maybe even a third line."
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
}

