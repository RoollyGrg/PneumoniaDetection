//
//  Information.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/03/2022.
//

import SwiftUI

struct Information: View {
    var body: some View {
        ZStack{
            NavigationView{
            VStack{
                
                Text("Information")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .frame(width: 330, alignment: .leading)
                    .padding(.bottom, 45)
                    .padding(.top, 22)
                
                HStack {
                    VStack {
                        NavigationLink(destination: DiagTreatment()
                                       , label:{
                        
                        VStack(alignment:.center, spacing: 10){
                            
                            Image(systemName: "pills.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.purple)
                                .padding(.bottom, 10)
                            
                            Text("Diagnosis & Treatment")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                        }
                        .frame(width: 170, height: 170)
                        .background(.white)
                        .cornerRadius(15)
                        .clipped()
                        .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                        })
                           
                    }
                    Spacer()
                        .frame(width: 20)
                    VStack{
                        NavigationLink(destination: LocationView().navigationBarBackButtonHidden(true)
                                        .navigationBarHidden(true)
                                       , label:{
                        
                        VStack(alignment:.center, spacing: 10){
                            
                            Image(systemName: "cross.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.red)
                                .padding(.bottom, 10)
                            
                            Text("Hospitals")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                        }
                        .frame(width: 170, height: 170)
                        .background(.white)
                        .cornerRadius(15)
                        .clipped()
                        .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                        })
                            
                    }
                    
                }
                
                
                Spacer()
            }
            }
            
        }

    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
            .environmentObject(LocationViewModel())
    }
}
