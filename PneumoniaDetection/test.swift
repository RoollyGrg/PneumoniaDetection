//
//  test.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 26/03/2022.
//

import SwiftUI
import CoreML

struct test: View {
    let currentimage = "n3"

    @State private var classificationLabel: String = ""
    
    var body: some View {
        VStack{
                    Image(currentimage)
                        .resizable()
                        .frame(width: 299, height: 299)
                        .padding()

            
            Button("Classify"){
                analyzeImage(image: UIImage(named: currentimage))
            }
            .frame(width: 200, height: 20, alignment: .center)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)
            
            Text(classificationLabel)
                .padding()
            
        }
    }
    
    private func analyzeImage(image: UIImage?) {
        guard let buffer = image?.resize(size: CGSize(width: 299, height: 299))?
                .getCVPixelBuffer() else {
            return
        }

        do {
            let config = MLModelConfiguration()
            let model = try PneumoniaML(configuration: config)
            let input = PneumoniaMLInput(image: buffer)

            let output = try model.prediction(input: input)
            let text = output.classLabel
            classificationLabel = text
        }
        catch {
            print(error.localizedDescription)
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
