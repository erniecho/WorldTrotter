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
        
        // Programmatic Control pg 105 need to edit out some code.
        segmentedControl.addTarget(self, action: #selector(mapTypeChanged), for: .valueChanged)
        
        // disable autolayout default settings.
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        //added control overlay over map.
        view.addSubview(segmentedControl)

        
        //Anchors settings for autolayout.
        let topConstraint
            = segmentedControl.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8)

        let margins = view.layoutMarginsGuide
        let leadingConstraint =
            segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint =
            segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        
        }
    // Switch for maptype control. pg 105
    func mapTypeChanged(_ segControl: UISegmentedControl) {
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
    }
    override func viewDidLoad() {
        // Always call the super implementation of viewDidLoad
        super.viewDidLoad()
        
        print("MapViewController loaded its view.")
    }
    
}
