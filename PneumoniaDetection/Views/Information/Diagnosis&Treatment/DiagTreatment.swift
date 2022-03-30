//
//  DiagTreatment.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/03/2022.
//

import SwiftUI

struct DiagTreatment: View {
    var body: some View {
        ZStack{
            ScrollView {
                
                //Diagnosis information
                VStack
                {
                    //title
                    Text("Diagnosis")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .frame(width: 330, alignment: .leading)
                        .padding(.bottom, 12)
                        
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 13))
                        .padding(.bottom, 105)
                                
                            Text("Blood tests are used to confirm an infection and to try to identify the type of organism causing the infection. However, precise identification isn't always possible.")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 13))
                        .padding(.bottom, 105)
                                
                            Text("Chest X-ray. This helps your doctor diagnose pneumonia and determine the extent and location of the infection. However, it can't tell your doctor what kind of germ is causing the pneumonia.")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 13))
                        .padding(.bottom, 80)
                                
                            Text("Pulse oximetry. This measures the oxygen level in your blood. Pneumonia can prevent your lungs from moving enough oxygen into your bloodstream.")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                            
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                                
                            Image(systemName: "circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 13))
                        .padding(.bottom, 80)
                                
                            Text("Sputum test. A sample of fluid from your lungs (sputum) is taken after a deep cough and analyzed to help pinpoint the cause of the infection.")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                            
            }
                
                
            //Treatment
                VStack
                {
                    //title
                    Text("Treatment")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .frame(width: 330, alignment: .leading)
                        .padding(.bottom, 12)
                        .padding(.top, 70)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 13))
                        .padding(.bottom, 180)
                                
                            Text("Antibiotics. These medicines are used to treat bacterial pneumonia. It may take time to identify the type of bacteria causing your pneumonia and to choose the best antibiotic to treat it. If your symptoms don't improve, your doctor may recommend a different antibiotic.")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 13))
                        .padding(.bottom, 290)
                                
                            Text("Cough medicine. This medicine may be used to calm your cough so that you can rest. Because coughing helps loosen and move fluid from your lungs, it's a good idea not to eliminate your cough completely. In addition, you should know that very few studies have looked at whether over-the-counter cough medicines lessen coughing caused by pneumonia. If you want to try a cough suppressant, use the lowest dose that helps you rest.")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                            Image(systemName: "circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 13))
                        .padding(.bottom, 130)
                                
                            Text("Fever reducers/pain relievers. You may take these as needed for fever and discomfort. These include drugs such as aspirin, ibuprofen (Advil, Motrin IB, others) and acetaminophen (Tylenol, others).")
                        .frame(width: 300, alignment: .leading)
                        .lineSpacing(6)
                    }
                            
            }
            }
        }
    }
}

struct DiagTreatment_Previews: PreviewProvider {
    static var previews: some View {
        DiagTreatment()
    }
}
