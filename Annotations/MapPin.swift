//
//  MapPin.swift
//  Annotations
//
//  Created by chandrasekhar yadavally on 4/29/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import MapKit

class MapPin: NSObject, MKAnnotation {
    let title: String?
    let subtitle: String?
    let coordinate: CLLocationCoordinate2D
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}
