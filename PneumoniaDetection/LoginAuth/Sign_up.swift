//
//  Sign_up.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 19/04/2022.
//

import SwiftUI
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif


struct Sign_up: View {
    @State var username = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        ZStack{
            NavigationView {
                VStack{
                    Text("Sign up")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .frame(maxWidth: 290, alignment: .leading)
                        .padding(.bottom, 40)
                        .padding(.top, 80)
                    
                    //Email and password
                    VStack{
                  
                    //username text field
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .foregroundColor(.gray)
                                
                                
                            TextField("User name", text: $username)
                                .frame(width: 260, height: 25)
                                .foregroundColor(.black)
                            
                        }
                        
                        
                        Divider()
                            .frame(width: 250)
                        
                        //email text field
                        HStack{
                            Image(systemName: "envelope.fill")
                                .foregroundColor(.gray)
                            
                            TextField("Email", text: $email)
                                .frame(width: 260, height: 25)
                                .foregroundColor(.black)
                                .autocapitalization(.none)
                            
                        }
                        .padding(.top, 20)
                        
                        Divider()
                            .frame(width: 250)
                        
                        //password text field
                            HStack {
                                Image(systemName: "lock")
                                    .foregroundColor(.gray)
                                    
                                    
                                SecureField("Password", text: $password)
                                    .frame(width: 260, height: 25)
                                    .foregroundColor(.black)
                                    .autocapitalization(.none)
                                
                            }
                            
                            .padding(.top, 20)
                            
                            Divider()
                                .frame(width: 250)
                        
                       
                        Button(action: {
                            signup(username1: username, email1: email, password: password)
                        }, label: {
                            Text("Sign up")
                                .font(.system(size: 19))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 300, height: 42)
                                .background(.green)
                                .cornerRadius(7)
                                .padding(.top, 40)
                                .padding(.bottom, 40)
                        })
                        
                        
                    }
                    Spacer()
                    VStack{
                        NavigationLink(destination: Sign_in()
                                        .navigationBarHidden(true), label: {
                        HStack{
                    //navigating to signup
                    Text("Don't have an account? ")

                                    Button(action: {}, label: {
                                Text("Sign in")
                                    .fontWeight(.bold)
                                    
                                    })
                            
                    }
                        })
                    }
                }
                .padding()
            }
      
        }

    }
    
    func signup(username1:String,email1:String,password:String){
            
            var semaphore = DispatchSemaphore (value: 0)

            let parameters = [
              [
                "key": "username",
                "value": username1,
                "type": "text"
              ],
              [
                "key": "email",
                "value": email1,
                "type": "text"
              ],
              [
                "key": "password1",
                "value": password,
                "type": "text"
              ],
              [
                "key": "password2",
                "value":password,
                "type": "text"
              ]] as [[String : Any]]

            let boundary = "Boundary-\(UUID().uuidString)"
            var body = ""
            var error: Error? = nil
            for param in parameters {
              if param["disabled"] == nil {
                let paramName = param["key"]!
                body += "--\(boundary)\r\n"
                body += "Content-Disposition:form-data; name=\"\(paramName)\""
                if param["contentType"] != nil {
                  body += "\r\nContent-Type: \(param["contentType"] as! String)"
                }
                let paramType = param["type"] as! String
                if paramType == "text" {
                  let paramValue = param["value"] as! String
                  body += "\r\n\r\n\(paramValue)\r\n"
                } else {
                    
                    do {
                        let paramSrc = param["src"] as! String
                        let fileData = try NSData(contentsOfFile:paramSrc, options:[]) as Data
                        let fileContent = String(data: fileData, encoding: .utf8)!
                        body += "; filename=\"\(paramSrc)\"\r\n"
                          + "Content-Type: \"content-type header\"\r\n\r\n\(fileContent)\r\n"
                        
                    } catch let error1 as NSError {
                        error = error1
                       
                    } catch {
                        // Catch any other errors
                    }

                }
              }
            }
            body += "--\(boundary)--\r\n";
            let postData = body.data(using: .utf8)

            var request = URLRequest(url: URL(string: "http://127.0.0.1:8000/rest-auth/registration/")!,timeoutInterval: Double.infinity)
            request.addValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

            request.httpMethod = "POST"
            request.httpBody = postData

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
              guard let data = data else {
                print(String(describing: error))
                semaphore.signal()
                return
              }
              print(String(data: data, encoding: .utf8)!)
              semaphore.signal()
            }

            task.resume()
            semaphore.wait()

        }
}

struct Sign_up_Previews: PreviewProvider {
    static var previews: some View {
        Sign_up()
    }
}
