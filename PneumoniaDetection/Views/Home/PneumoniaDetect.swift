//
//  PneumoniaDetect.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/02/2022.
//

import SwiftUI
import CoreML

struct PneumoniaDetect: View {
    let currentimage = "n1"
    let model: PneumoniaML = {
        do{
            let config = MLModelConfiguration()
            return try PneumoniaML(configuration: config)
        }
        catch{
            print(error)
            fatalError("error")
        }
    }()
    
    @State private var classificationLabel: String = ""
    
    //for action sheet function
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var image: UIImage?
    
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
                
                HStack{
                    
                    Button(action: {}, label: {
                        Image(uiImage: image ?? UIImage(named: currentimage)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 280, height: 280)
                    .cornerRadius(40)
                    .clipped()
                    })
                           }
                    Spacer()
                        .frame(height: 50)
                
               //button to import photos from the photo library
                Button(action: {
                    self.showSheet = true
                }, label: {
                    VStack{
                    Rectangle()
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color(red: 240/255, green: 240/255, blue:240/255))
                        .cornerRadius(15)
                        .padding(.top, 30)
                        .overlay(
                            Text("Import photo")
                                .font(.system(size: 20))
                                .fontWeight(.medium)
                                .offset(y: 15)
    
                        )
                    }
                })
                    .actionSheet(isPresented: $showSheet){
                        ActionSheet(title: Text("Select photos"), message: Text("Choose a Chest X-Ray image for pneumonia prediction"),
                                    buttons: [
                                        .default(Text("Photo library")){
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("camera")){
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ]
                        )
                    }
                
                //button to detect pneumonia
                VStack{
                    Button("Detect"){
                        classifyImage()
                    }
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .frame(width: 300, height: 50)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .padding(.top, 10)
                    
                }
                
                VStack{
                    Text(classificationLabel)
                }
                
            }
    }
        .sheet(isPresented: $showImagePicker){
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
        
    }
    private func classifyImage(){
        let currentImageName = currentimage
        guard let image = UIImage(named: currentImageName),
              let resizedImage = image.resizeImageTo(size:CGSize(width: 150, height: 150)),
              let buffer = resizedImage.convertToBuffer() else {
              return
    }
        let output = try? model.prediction(image: buffer)
        
        if let output = output {
            let result = output.classLabel
            print(output)
            self.classificationLabel = result
        }
}
}

struct PneumoniaDetect_Previews: PreviewProvider {
    static var previews: some View {
        PneumoniaDetect()
    }
}
