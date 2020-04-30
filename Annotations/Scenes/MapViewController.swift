//
//  MapViewController.swift
//  Annotations
//
//  Created by chandrasekhar yadavally on 4/29/20.
//  Copyright © 2020 chandrasekhar yadavally. All rights reserved.
//

import UIKit
import MapKit
import SafariServices

class MapViewController: UIViewController {
    
    var mapView: MKMapView!
    let locationManager = CLLocationManager()
    var place: Place!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMapView()
        configureLocationManager()
        setUpNavController()
    }
    
    func setUpNavController() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    func configureLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        checkLocationAuthorizationStatus()
    }
    
    func checkLocationAuthorizationStatus() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse: mapView.showsUserLocation = true
        case .authorizedAlways: mapView.showsUserLocation = true
        case .denied: locationManager.requestWhenInUseAuthorization()
        case .notDetermined: locationManager.requestWhenInUseAuthorization()
        default: break
        }
    }
    
    func configureMapView() {
        mapView = MKMapView()
        view.addSubview(mapView)
        mapView.mapType = .mutedStandard
        mapView.delegate = self
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension MapViewController: CLLocationManagerDelegate, MKMapViewDelegate {
    func setAnnotationPin(for place: Place) {
        self.place = place
        navigationItem.title = place.name + ", " + place.state
        let coordinate = CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)
        let pin = MapPin(title: place.name, subtitle: place.state, coordinate: coordinate)
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(pin)
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        let safariVC = SFSafariViewController(url: URL(string: place.url)!)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
