//
//  ContentModel.swift
//  City Sights App
//
//  Created by Mohammed on 10/5/21.
//

import Foundation
import CoreLocation

class ContentModel: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    var locationManager = CLLocationManager()
    
   override init() {
       super.init()
        
        // set delegate of location manager
        locationManager.delegate = self
        
        // request permission from user
        locationManager.requestWhenInUseAuthorization()
            }
    // loction the user if ok or not
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        if locationManager.authorizationStatus == .authorizedAlways ||
        locationManager.authorizationStatus == .authorizedWhenInUse {
            // start geolocating the user
            locationManager.startUpdatingLocation()

        }
        else if locationManager.authorizationStatus == .denied {
            // when dont have permission
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // gives us location of the user
        print(locations.first ?? "no location")
        // stop request the loction
        locationManager.stopUpdatingLocation()
    }
    
}
