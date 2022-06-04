//
//  PneumoniaDetect.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/02/2022.
//

import SwiftUI
import CoreML
import UIKit

struct PneumoniaDetect: View {
    
    //for action sheet function
    @State private var showSheet: Bool = false
    @State var isPresenting: Bool = false
    @State var uiImage: UIImage?
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @ObservedObject var classifier: ImageClassifier
    
    var body: some View {
        VStack{
              
        //Importingsection
            VStack{
                Text("Pneumonia detection")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Text("Your imported images for pneumonia detection\n will be displayed here")
                    .multilineTextAlignment(.center)
                    .lineSpacing(12)
                    .font(.system(size: 14))
                    .padding(.bottom, 40)
                
                VStack{
                    
                    Rectangle()
                        .strokeBorder()
                        .foregroundColor(.yellow)
                        .frame(width: 300, height: 300)
                        .overlay(
                            Group {
                                if uiImage != nil {
                                    Image(uiImage: uiImage!)
                                        .resizable()
                                        .scaledToFit()
                                }
                            }
                        )

                    Spacer()
                        .frame(height: 30)
                
                    
//               button to import photos from the photo library
                Button(action: {
                    self.showSheet = true
                }, label: {
                    VStack{
                    Rectangle()
                        .frame(width: 300, height: 50)
                        .foregroundColor(.blue)
                        .cornerRadius(15)
                        .padding(.top, 30)
                        .overlay(
                            Text("Import photo")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .offset(y: 15)

                        )
                    }
                    
                })
                    .actionSheet(isPresented: $showSheet){
                        ActionSheet(title: Text("Select photos"), message: Text("Choose a Chest X-Ray image for pneumonia prediction"),
                                    buttons: [
                                        .default(Text("Photo library")){
                                            self.isPresenting = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("camera")){
                                            self.isPresenting = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ]
                        )
                    }
                    
                
                    
                }
                
                
                //for displaying the predicted value
                VStack{
                    Group {
                        if let imageClass = classifier.imageClass {
                            HStack{
                                Text("Image Detected:")
                                    .font(.caption)
                                Text(imageClass)
                                    .bold()
                            }
                        } else {
                            HStack{
                                Text("Image categories: NA")
                                    .font(.caption)
                            }
                        }
                    }
                    .font(.subheadline)
                    .padding()
                }
                
            }
    }
        .sheet(isPresented: $isPresenting){
            ImagePicker(uiImage: $uiImage, isPresenting:  $isPresenting, sourceType: $sourceType)
                .onDisappear{
                    if uiImage != nil {
                        classifier.detect(uiImage: uiImage!)
                    }
                }
            
        }
        
    }

}


struct PneumoniaDetect_Previews: PreviewProvider {
    static var previews: some View {
        PneumoniaDetect(classifier: ImageClassifier())
        
    }
}
