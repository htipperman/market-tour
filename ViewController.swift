//
//  ViewController.swift
//  IMDraft
//
//  Created by Hannah Tipperman on 6/3/16.
//  Copyright © 2016 Hannah Tipperman. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomToRegion()
        
        mapView.delegate = self
        
        let annotations = getMapAnnotations()
        mapView.addAnnotations(annotations)
        
        
    }
    
    func getMapAnnotations() -> [Annotation]{
        
        var annotations:Array = [Annotation]()
        
        let pin0 = Annotation(latitude: 39.938691,
                              longitude: -75.157771,
                              no: "903 S 9th St",
                              title: "Anthony's Coffee House")
        
        let pin1 = Annotation(latitude: 39.938595,
                              longitude: -75.157730,
                              no: "909 S 9th St",
                              title: "D'Angelo Bros.")
        let pin2 = Annotation(latitude: 39.938041,
                              longitude: -75.158226,
                              no: "930 S. 9th St",
                              title: "Di Bruno Bros.")
        let pin3 = Annotation(latitude: 39.937720,
                              longitude: -75.158263,
                              no: "944 S 9th St",
                              title: "Talluto's")
        let pin4 = Annotation(latitude: 39.937681,
                              longitude: -75.157979,
                              no: "949 S 9th St",
                              title: "Grassia’s Spice Company")
        let pin5 = Annotation(latitude: 39.937373,
                              longitude: -75.158346,
                              no: "1006 S 9th St",
                              title: "Fante's")
        let pin6 = Annotation(latitude: 39.937179,
                              longitude: -75.158052,
                              no: "1015 S 9th St",
                              title: "Darigo's Fish Market")
        let pin7 = Annotation(latitude: 39.937135,
                              longitude: -75.158072,
                              no: "1017 S 9th St",
                              title: "Paesano's")
        let pin8 = Annotation(latitude: 39.936456,
                              longitude: -75.158237,
                              no: "1043 S 9th St",
                              title: "Giordano's")
        let pin9 = Annotation(latitude: 39.934391,
                              longitude: -75.158986,
                              no: "1172 S 9th St",
                              title: "RIM Cafe")
        let pin10 = Annotation(latitude: 39.933799,
                               longitude: -75.158800,
                               no: "1219 S 9th St",
                               title: "Geno's")
        let pin11 = Annotation(latitude: 39.933197,
                               longitude: -75.159262,
                               no: "1237 E Passyunk Ave",
                               title: "Pat's")
        let pin12 = Annotation(latitude: 39.933486,
                               longitude: -75.158732,
                               no: "1231 E Passyunk Ave",
                               title: "Satellite Auto Body")
        let pin13 = Annotation(latitude: 39.933049,
                               longitude: -75.159717,
                               no: "1231 E Passyunk Ave",
                               title: "Community Garden")
        annotations.append(pin0)
        annotations.append(pin1)
        annotations.append(pin2)
        annotations.append(pin3)
        annotations.append(pin4)
        annotations.append(pin5)
        annotations.append(pin6)
        annotations.append(pin7)
        annotations.append(pin8)
        annotations.append(pin9)
        annotations.append(pin10)
        annotations.append(pin11)
        annotations.append(pin12)
        annotations.append(pin13)
        return annotations
    }
    
    func zoomToRegion() {
        
        let location = CLLocationCoordinate2D(latitude: 39.937580, longitude: -75.159050)
        
        let region = MKCoordinateRegionMakeWithDistance(location, 500.0, 500.0)
        
        mapView.setRegion(region, animated: true)
    }

}

