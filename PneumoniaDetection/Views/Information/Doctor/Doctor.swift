//
//  Doctor.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 27/04/2022.
//

import SwiftUI

struct Doctor: View {
    var body: some View {
        ZStack{

            ScrollView {
                VStack{
                        Text("Doctor")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .frame(width: 330, alignment: .leading)
                        
                        HStack {
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //hospital location
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                        Spacer()
                            .frame(height: 30)
                        
                        HStack {
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //hospital location
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                        HStack {
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //hospital location
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                    
                            }
                            
                        }
                        
                        Spacer()
                            .frame(height: 30)
                        
                        HStack {
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
                                    
                                }
                                .frame(width: 160, height: 200)
                                .background(.white)
                                .cornerRadius(15)
                                .clipped()
                                .shadow(color: Color(red: 195/255, green: 195/255, blue: 195/255), radius: 3, x: 0, y: 1)
                                
                                   
                            }
                            Spacer()
                                .frame(width: 20)
                            
                            //hospital location
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
                                    
                                }
                                .frame(width: 160, height: 200)
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
