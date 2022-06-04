//
//  ContentView.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/02/2022.

import SwiftUI

struct ContentView: View {
    @State private var selected = 0
    var body: some View {
        TabView(selection: $selected){
            Information()
                .tabItem{
                    Image(systemName: "filemenu.and.selection")

                }.tag(2)

            PneumoniaDetect(classifier: ImageClassifier())
                .navigationBarHidden(true)
                .tabItem{
                    Image(systemName: "rays")

                }.tag(0)

            Profile()
                .tabItem{
                    Image(systemName: "person.fill")

            }.tag(1)

        }
        .accentColor(.blue)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
