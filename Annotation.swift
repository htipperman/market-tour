//
//  Annotation.swift
//  MapPins
//
//  Created by Rachael Tipperman on 7/12/16.
//  Copyright © 2016 Rachael Tipperman. All rights reserved.
//

import Foundation
import MapKit

class Annotation: NSObject, MKAnnotation {
    var latitude: Double?
    var longitude: Double?
    var no: String?
    var title: String?
    
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude!, longitude: longitude!)
    }
    init(latitude: Double, longitude: Double, no: String, title: String){
        self.title = title
        self.no = no
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
}