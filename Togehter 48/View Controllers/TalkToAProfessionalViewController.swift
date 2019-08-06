//
//  TalkToAProfessionalViewController.swift
//  Togehter 48
//
//  Created by User on 8/6/19.
//  Copyright © 2019 SER-YCL8. All rights reserved.
//

import UIKit

class TalkToAProfessionalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func urgentCall(_ sender: Any) {
        let url:NSURL = NSURL(string: "tel://18002738255")!
        UIApplication.shared.openURL(url as URL)
        
    }
    
}
