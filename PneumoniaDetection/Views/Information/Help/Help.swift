//
//  Help.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 27/04/2022.
//

import SwiftUI

struct Help: View {
    var body: some View {
        ZStack{
            ScrollView{
                VStack{
                    Text("Help")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                    
                    Text("Need any help to use the app? ")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                 

                }
                VStack{
                    Text("Detection page")
                        .font(.system(size: 30))
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                        .frame(width: 330, alignment: .leading)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                 
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 13))
                        .padding(.bottom, 30)
                                
                            Text("To properly use the detection feature you need a Chest X-ray image.")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 13))
                        .padding(.bottom, 30)
                                
                            Text("Tap the import photo button to choose or capture the photo and upload it.")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.blue)
                        .font(.system(size: 13))
                        .padding(.bottom, 55)
                                
                            Text("Tap the detect button and wallah you're done. Your detection result will be shown on the screen")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                }
                
                // profile help
                
                VStack{
                    Text("Profile page")
                        .font(.system(size: 30))
                        .foregroundColor(.orange)
                        .fontWeight(.bold)
                        .frame(width: 330, alignment: .leading)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                 
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 13))
                        .padding(.bottom, 30)
                                
                            Text("Your Profile page displays your information and log out button sign out from the app.")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                    
                   
                }
                
                // information help
                
                VStack{
                    Text("Information page")
                        .font(.system(size: 30))
                        .foregroundColor(.purple)
                        .fontWeight(.bold)
                        .frame(width: 330, alignment: .leading)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                 
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.purple)
                        .font(.system(size: 13))
                        .padding(.bottom, 30)
                                
                            Text("There are all together 3 buttons Diagnosis & Treatment, Hospital, Doctor.")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.purple)
                        .font(.system(size: 13))
                        .padding(.bottom, 55)
                                
                            Text("Diagnosis & Treatment gives you a brief information about pneumonia and how the infection can be treated.")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.purple)
                        .font(.system(size: 13))
                        .padding(.bottom, 55)
                                
                            Text("Hospital page shows you the location of each hospital that specializes on diagnosis of the infection and gives Treatment.")
                            .font(.system(size: 16))
                            .lineSpacing(10)
                            .frame(width: 330, alignment: .leading)
                    }
                    .padding(.bottom, 20)
                   
                }


            }
        }
    }
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Help()
    }
}
