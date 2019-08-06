//
//  mapViewController.swift
//  Togehter 48
//
//  Created by SER-YCL8 on 7/24/19.
//  Copyright © 2019 SER-YCL8. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class mapViewController: UIViewController {

    @IBOutlet weak var Map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
var location = CLLocationCoordinate2DMake(41.812990, -87.619680)
        //Coordinates point show direct locations of the support groups
var annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Chicago Youth Program"
        annotation.subtitle = "Phone#(773)-924-0220  Ages:3-25"
        //Annotation will be shown on map, with the info on location
        
        Map.addAnnotation(annotation)
        // Do any additional setup after loading the view.
    }
}
