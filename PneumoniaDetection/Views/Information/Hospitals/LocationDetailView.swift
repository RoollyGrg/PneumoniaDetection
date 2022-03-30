//
//  LocationDetailView.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 31/03/2022.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    @EnvironmentObject private var vm: LocationViewModel
    let location: Location
    
    var body: some View {
        ScrollView{
            VStack{
                imageSection
            }
            
            VStack(alignment: .leading, spacing: 16){
                titleSection
                Divider()
                descSection
                Divider()
                mapAnnotation
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .ignoresSafeArea()
        .overlay(backBtn, alignment: .topLeading)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationViewModel())
    }
}

extension LocationDetailView{
    
    private var  imageSection: some View{
        TabView {
            ForEach(location.imageNames, id: \.self){
                Image($0)
                    .resizable()
                    .scaledToFill()
                    //improvement for ipad view i.e. images zoomed out
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection:some View{
        VStack(alignment: .leading, spacing: 8){
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
                
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var descSection:some View{
        VStack(alignment: .leading, spacing: 16){
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
         //as link is optional and decalaring default string as a link
            if let url = URL(string: location.link){
                Link("Read more", destination: url)
                    .font(.headline)
                    .foregroundColor(.blue)
            }
        }
    }
    
    private var mapAnnotation: some View {
        
        Map(coordinateRegion: .constant(MKCoordinateRegion(center: location.coordinates, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))), annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates){
                MapAnnotationView()
            }
        }
        .allowsHitTesting(false)
        .aspectRatio(1, contentMode: .fit)
        .cornerRadius(25)
    }
    
    private var backBtn: some View{
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(30)
                .padding()
        }

    }
}

