//
//  UEMapViewController.swift
//  WineKnow
//
//  Created by Harendra Singh on 7/13/18.
//  Copyright © 2018 Harendra Singh. All rights reserved.
//

import UIKit
import LGSideMenuController
import MapKit

class UEMapViewController: UIViewController , CLLocationManagerDelegate, MKMapViewDelegate{
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu"), style: .plain, target: self, action: #selector(self.onMenuButton))
        navigationItem.title = "Wineknow"
        
        mapView.delegate = self
        mapView.mapType = .standard
        mapView.isZoomEnabled = true
        mapView.showsUserLocation = true
    }
    
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        debugPrint("mapView didSelect")
    }
    
    @objc func onMenuButton() {
        self.sideMenuController?.showLeftViewAnimated()
    }
    
}
