//
//  LocationViewModel.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 31/03/2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject{
    
    //all loaded location
    @Published var locations: [Location]
    
    //current locaiton on map
    @Published var mapLocation: Location{
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    
    // current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //show location detail through sheet
    @Published var sheetLocation: Location? = nil
    
    //show List of location
    @Published var showLocationList: Bool = false
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location){
        mapRegion = MKCoordinateRegion(
            center: location.coordinates, span: mapSpan)
    }
    
     func toggleLocationList(){
        withAnimation(.easeOut){
            showLocationList = !showLocationList
        }
    }
    
    func showNextLocation(location: Location){
        withAnimation(.easeOut){
            mapLocation = location
            showLocationList = false
        }
    }
    
    func nextButtonPressed(){
        //getting current index
        guard let currentIndex = locations.firstIndex(where: { $0 == mapLocation
        }) else {
            print("Couldn't find current index in location array")
            return
        }
        
        //checking if the currentIndex is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // if next index is not valid, restart the index from 0
            guard let firstLocation = locations.first else {return}
            showNextLocation(location: firstLocation)
            return
        }
        
        //if next index is valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}

