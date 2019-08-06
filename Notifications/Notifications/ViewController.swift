//
//  ViewController.swift
//  Notifications
//
//  Created by Central States SER 02 on 8/5/19.
//  Copyright © 2019 Central States SER 02. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        let content = UNMutableNotificationContent()
        content.title = "From Together 48"
        content.body = "You are unique"
        
        
        // Step 3: Create the notification trigger
        let date = Date().addingTimeInterval(5)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        // Step 4: Create the request
        
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Step: Register ther request
        center.add(request) { (error) in
            //Check the error parameter and handle any error
        }
    }


}

