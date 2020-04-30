//
//  Place.swift
//  Annotations
//
//  Created by chandrasekhar yadavally on 4/29/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import Foundation
import MapKit

struct Place: Hashable {
    let name: String
    let state: String
    let url: String
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    
    static let places = [
    
        Place(name: "Albuquerque", state: "NM", url: "https://en.wikipedia.org/wiki/Albuquerque,_New_Mexico", latitude: 35.106766, longitude: -106.629181),
        Place(name: "Atlanta", state: "GA", url: "https://en.wikipedia.org/wiki/Atlanta", latitude: 33.753746, longitude: -84.386330),
        Place(name: "Austin", state: "TX", url: "https://en.wikipedia.org/wiki/Austin,_Texas", latitude: 30.266666, longitude: -97.73333),
        Place(name: "Baltimore", state: "MD", url: "Baltimore, MD, USA", latitude: 39.299236, longitude: -76.609383),
        Place(name: "Bridgeport", state: "CT", url: "https://en.wikipedia.org/wiki/Bridgeport,_Connecticut", latitude: 41.18639, longitude: -73.195557),
        Place(name: "Cambridge", state: "MA", url: "https://en.wikipedia.org/wiki/Cambridge,_Massachusetts", latitude: 42.373611, longitude: -71.110558),
        Place(name: "Chicago", state: "IL", url: "https://en.wikipedia.org/wiki/Chicago", latitude: 41.8781, longitude: -87.6298),
        Place(name: "Columbus", state: "OH", url: "https://en.wikipedia.org/wiki/Columbus,_Ohio", latitude: 39.983334, longitude: -82.98333),
        Place(name: "Dallas", state: "TX", url: "https://en.wikipedia.org/wiki/Dallas", latitude: 32.779167, longitude: -96.808891),
        Place(name: "Dearborn", state: "MI", url: "https://en.wikipedia.org/wiki/Dearborn,_Michigan", latitude: 42.322262, longitude: -83.176315),
        Place(name: "Eden Prairie", state: "MN", url: "https://en.wikipedia.org/wiki/Eden_Prairie,_Minnesota", latitude: 44.852463, longitude: -93.475113),
        Place(name: "Edison", state: "NJ", url: "https://en.wikipedia.org/wiki/Edison,_New_Jersey", latitude: 40.522964, longitude: -74.411674),
        Place(name: "Fargo", state: "ND", url: "https://en.wikipedia.org/wiki/Fargo,_North_Dakota", latitude: 46.877186, longitude: -96.789803),
        Place(name: "Houston", state: "TX", url: "https://en.wikipedia.org/wiki/Houston", latitude: 29.749907, longitude: -95.358421),
        Place(name: "Indianapolis", state: "IN", url: "https://en.wikipedia.org/wiki/Indianapolis", latitude: 39.791, longitude: -86.148003),
        Place(name: "Jersey City", state: "NJ", url: "https://en.wikipedia.org/wiki/Jersey_City,_New_Jersey", latitude: 40.728157, longitude: -74.077644),
        Place(name: "Kansas City", state: "KS", url: "en.wikipedia.org/wiki/Kansas_City,_Kansas", latitude: 39.106667, longitude: -94.676392),
        Place(name: "Las Vegas", state: "NV", url: "https://en.wikipedia.org/wiki/Las_Vegas", latitude: 36.114647, longitude: -115.172813),
        Place(name: "Lincoln", state: "NE", url: "https://en.wikipedia.org/wiki/Lincoln,_Nebraska", latitude: 40.806862, longitude: -96.681679),
        Place(name: "Marietta", state: "GA", url: "https://en.wikipedia.org/wiki/Marietta,_Georgia", latitude: 33.952602, longitude: -84.549934),
        Place(name: "Minneapolis", state: "MN", url: "https://en.wikipedia.org/wiki/Minneapolis", latitude: 44.986656, longitude: -93.258133),
        Place(name: "New York City", state: "NY", url: "https://en.wikipedia.org/wiki/New_York_City", latitude: 40.73061, longitude: -73.935242),
        Place(name: "Oklahoma City", state: "OK", url: "https://en.wikipedia.org/wiki/Oklahoma", latitude: 35.481918, longitude: -97.508469),
        Place(name: "Palo Alto", state: "CA", url: "https://en.wikipedia.org/wiki/Palo_Alto,_California", latitude: 37.468319, longitude: -122.143936),
        Place(name: "Pittsburgh", state: "PA", url: "https://en.wikipedia.org/wiki/Pittsburgh", latitude: 40.440624, longitude: -79.995888),
        Place(name: "Richmond", state: "VA", url: "https://en.wikipedia.org/wiki/Richmond,_Virginia", latitude: 37.54129, longitude: -77.434769),
        Place(name: "Sacramento", state: "CA", url: "https://en.wikipedia.org/wiki/Sacramento,_California", latitude: 38.575764, longitude: -121.478851),
        Place(name: "San Francisco", state: "CA", url: "https://en.wikipedia.org/wiki/San_Francisco", latitude: 37.773972, longitude: -122.431297),
        Place(name: "Seattle", state: "WA", url: "https://en.wikipedia.org/wiki/Seattle", latitude: 47.608013, longitude: -122.335167),
        Place(name: "Sioux Falls", state: "SD", url: "https://en.wikipedia.org/wiki/Sioux_Falls,_South_Dakota", latitude: 43.536388, longitude: -96.731667),
        Place(name: "Tampa", state: "FL", url: "https://en.wikipedia.org/wiki/Tampa,_Florida", latitude: 27.964157, longitude: -82.452606),
        Place(name: "Tempe", state: "AZ", url: "https://en.wikipedia.org/wiki/Tempe,_Arizona", latitude: 33.427204, longitude: -111.939896),
        Place(name: "Wilmington", state: "DE", url: "https://en.wikipedia.org/wiki/Wilmington,_Delaware", latitude: 39.739071, longitude: -75.539787)
    ]
    
}
