//
//  ContentView.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    var body: some View {
        TabView(selection: $selected){
            Information()
                .tabItem{
                    Image(systemName: "doc.on.doc.fill")

                }.tag(2)
            
            PneumoniaDetect()
                .tabItem{
                    Image(systemName: "house.fill")

                }.tag(0)
            
            Profile()
            .tabItem{
                Image(systemName: "person.fill")

            }.tag(1)

        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
