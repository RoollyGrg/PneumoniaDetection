//
//  Profile.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/02/2022.
//

import SwiftUI

struct Profile: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
 
                VStack{
                    VStack(alignment: .leading){
                        Text("Good morning")
                            .fontWeight(.bold)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .frame(width: 320)
                    }
                        
                    
                    Image("login")
                        .resizable()
                        .frame(width: 120, height: 120, alignment: .center)
                        .background(.black)
                        .clipped()
                        .clipShape(Circle())
                    
                    //username
                    Text("Bibek Gurung")
                        .fontWeight(.medium)
                        .font(.title)
                        .padding()
                    //username
                    Text("bibekgurung2673@gmail.com")
                        .fontWeight(.medium)
                        .font(.title3)
                        .padding()
                    
                    Spacer()
                        .frame(height: 160)
                    
                    VStack{
                        Button("Logout"){
                            
                            settings.isLoggedIn = false
                        }
                        .frame(width: 260, height: 10)
                        .padding(20)
                        .font(.system(size: 20, weight: Font.Weight.bold))
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .offset(y: 40)
                        
                        
                    }
                    Spacer()

            }
                }
            }


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .environmentObject(UserSettings())
    }
}
