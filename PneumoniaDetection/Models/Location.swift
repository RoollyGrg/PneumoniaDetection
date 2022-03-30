//
//  Location.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 31/03/2022.
//

import Foundation
import CoreLocation
import MapKit

struct Location: Identifiable, Equatable{
    
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String{
        name + cityName
    }
    
    //equatable
    //for removing animaiton for the label
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}

