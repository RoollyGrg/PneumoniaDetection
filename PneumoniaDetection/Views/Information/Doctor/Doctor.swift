//
//  Doctor.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 27/04/2022.
//

import SwiftUI

struct Doctor: View {
    
    var phoneNumber = "9826152016"
    
    var body: some View {
        ZStack{

            ScrollView {
                VStack{
                    //title of the page
                        Text("Doctor")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .frame(width: 330, alignment: .leading)

                        
                        HStack {
                            
                            //Prof. Dr. Umid Kumar Shrestha
                            VStack {
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d1")
                                        .resizable()
                                        .frame(width: 100, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Prof. Dr. Umid Kumar Shrestha")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //Dr. Mahesh Dahal
                            VStack{
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d2")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Dr. Mahesh Dahal")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                        .frame(height: 30)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                        Spacer()
                            .frame(height: 30)
                        
                        HStack {
                            //Dr. Pawan Singh Bhat
                            VStack {
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d3")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Dr. Pawan Singh Bhat")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //Dr. Prativa Shrestha
                            VStack{
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d4")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Dr. Prativa Shrestha")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                        HStack {
                            //Dr. Sanjeev Thapa
                            VStack {
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d5")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Dr. Sanjeev Thapa")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                  
                                    Spacer()
                                        .frame(height: 30)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //Dr. Sheelendra Shakya
                            VStack{
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d6")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Dr. Sheelendra Shakya")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                        HStack {
                            //Dr. Banira Karki
                            VStack {
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d7")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Dr. Banira Karki")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                   
                                    Spacer()
                                        .frame(height: 30)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //Assoc. Prof. Dr. Smrity Maskey
                            VStack{
                                
                                VStack(alignment:.center, spacing: 10){
                                    
                                    Image("d8")
                                        .resizable()
                                        .frame(width: 150, height: 100, alignment: .center)
                                        .background(.black)
                                        .clipped()
                                        .clipShape(Circle())
                                        .padding(.bottom, 10)
                                    
                                    Text("Assoc. Prof. Dr. Smrity Maskey")
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                        .frame(height: 10)
                                    
                                    Button(action: {
                                        let tel = "tel://"
                                        let formattedString = tel + phoneNumber
                                        guard let url = URL(string: formattedString) else { return }
                                        UIApplication.shared.open(url)
                                       }) {
                                       Text("Call")
                                               .fontWeight(.bold)
                                               .frame(width: 120)
                                               .padding(7)
                                               .background(.blue)
                                               .foregroundColor(.white)
                                               .cornerRadius(20)
                                               
                                    }
                                    
                                    
                                }
                                .frame(width: 150, height: 250)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                }
            }
        }
    }
}

struct Doctor_Previews: PreviewProvider {
    static var previews: some View {
        Doctor()
    }
}
