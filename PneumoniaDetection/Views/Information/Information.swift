//
//  Information.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/03/2022.
//

import SwiftUI

struct Information: View {
    @StateObject private var vm = LocationViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                
            VStack{
                
                Text("Information")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .frame(width: 330, alignment: .leading)
                    .padding(.bottom, 45)
                
          //Diagtreatment and hospital
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
                        .frame(width: 150, height: 150)
                        .background(.white)
                        .cornerRadius(15)
                        .clipped()
                        .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                        })
                           
                    }
                    Spacer()
                        .frame(width: 20)
                    
                    //hospital location
                    VStack{
                        NavigationLink(destination: LocationView()
                            .environmentObject(vm)
                            .navigationBarBackButtonHidden(true)
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
                        .frame(width: 150, height: 150)
                        .background(.white)
                        .cornerRadius(15)
                        .clipped()
                        .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                        })
                            
                    }
                    
                }
                
                Spacer()
                    .frame(height: 40)
                
                
             //doctor and help
                
                HStack {
                    VStack {
                        NavigationLink(destination: Doctor()
                                       , label:{
                        
                        VStack(alignment:.center, spacing: 10){
                            
                            Image(systemName: "waveform.path.ecg.rectangle.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.green)
                                .padding(.bottom, 10)
                            
                            Text("Doctor")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                        }
                        .frame(width: 150, height: 150)
                        .background(.white)
                        .cornerRadius(15)
                        .clipped()
                        .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                        })
                           
                    }
                    Spacer()
                        .frame(width: 20)
                    
                    //hospital location
                    VStack{
                        NavigationLink(destination: Help()
                                       , label:{
                        
                        VStack(alignment:.center, spacing: 10){
                            
                            Image(systemName: "questionmark.circle.fill")
                                .font(.system(size: 60))
                                .foregroundColor(.gray)
                                .padding(.bottom, 10)
                            
                            Text("Help")
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                            
                        }
                        .frame(width: 150, height: 150)
                        .background(.white)
                        .cornerRadius(15)
                        .clipped()
                        .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                        })
                            
                    }
                    
                }
                
                Spacer()
                    .frame(height: 350)
                
                
                

                
                
                
                
                
                
                
                
            }
            }
            
        }
        }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
