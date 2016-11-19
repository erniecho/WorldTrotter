//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Ernie Cho on 11/18/16.
//  Copyright © 2016 ErnShu. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    
    override func loadView() {
        //Create a map view
        mapView = MKMapView()
        
        // Set it as *the* view of this view controller
        
        view = mapView
        
    }
    
    
    override func viewDidLoad() {
        // Always call the super implementation of viewDidLoad
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
    
}
