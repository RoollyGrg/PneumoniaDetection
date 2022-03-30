//
//  LocationView.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 31/03/2022.
//

import SwiftUI
import MapKit

struct LocationView: View {
    @EnvironmentObject private var vm: LocationViewModel
    //setting max width for ipad
    let maxWidthForIpad: CGFloat = 700

    var body: some View {
        ZStack{
            mapAnnotation
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                header
                    .padding()
                    .frame(maxWidth: maxWidthForIpad)
                Spacer()
              locationsPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
            .environmentObject(LocationViewModel())
    }
}

extension LocationView{
    private var header: some View{
        HStack {
            VStack{
                backBtn
            }
            VStack{
                Button(action: vm.toggleLocationList) {
                    Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                    //for removing the animation for the label, mapLocation as equatable
                        .animation(.none, value: vm.mapLocation)
                    .overlay(alignment: .leading){
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                    }
                }
                if vm.showLocationList{
                    LocaitonsListView()
                }
                
            }
            .background(.thickMaterial)
            .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
        }
    }
    
    private var mapAnnotation: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates){
                MapAnnotationView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationsPreviewStack: some View{
        ZStack{
            ForEach(vm.locations){ location in
                if vm.mapLocation == location{
                    LocationPreviewView(location: location)
                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .frame(maxWidth: maxWidthForIpad)
                        .frame(maxWidth: .infinity)
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
                
            }
        }
    }
    
    //back button to information page
    private var backBtn: some View{
        Button {
            
        } label: {
            Image(systemName: "chevron.backward")
                .font(.headline)
                .padding(19)
                .foregroundColor(.primary)
                .background(.white)
                .cornerRadius(10)
        }

    }
    
    
}

