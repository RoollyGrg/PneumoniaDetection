//
//  LocaitonsListView.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 31/03/2022.
//

import SwiftUI

struct LocaitonsListView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var body: some View {
        List{
            ForEach(vm.locations){ location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical, 4)
                .listRowBackground(Color.clear)
        }
    }
        .listStyle(PlainListStyle())
}
}

struct LocaitonsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocaitonsListView()
            .environmentObject(LocationViewModel())
    }
}

extension LocaitonsListView{
    private func listRowView(location: Location) -> some View{
        HStack{
            if let imageName = location.imageNames.first{
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 45, height: 45)
                    .cornerRadius(10)
            }
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    }

