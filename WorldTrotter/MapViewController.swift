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
        
        // UI Control for map
        let segmentedControl
            = UISegmentedControl(items: ["Standard","Hybrid","Satelite"])
        segmentedControl.backgroundColor
        = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        //Anchors settings for autolayout.
        let topConstraint
        = segmentedControl.topAnchor.constraint(equalTo: view.topAnchor)
        let leadingContraint
        = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstraint
        = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        topConstraint.isActive = true
        leadingContraint.isActive = true
        trailingConstraint.isActive = true
        
        //added control overlay over map.
        view.addSubview(segmentedControl)
    }
    
    
    override func viewDidLoad() {
        // Always call the super implementation of viewDidLoad
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
    
}
