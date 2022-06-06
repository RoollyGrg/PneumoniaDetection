//
//  Sign_in.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 10/04/2022.
//

import SwiftUI

let userEmail = "bibekgurung2673@gmail.com"
let userPassword = "Macwindows"

struct Sign_in: View {
    @State var email = ""
    @State var password = ""
    @State var authenticationfail: Bool = false
    @State var authenticationSuccess: Bool = false
    @State var name: String = ""
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        
        
        if settings.isLoggedIn{
            ContentView()
                .environmentObject(settings)
        }
        else{
            if UserDefaults.standard.bool(forKey: "login") == true {
                ContentView()
                    .environmentObject(settings)
            }
            else{
 
    //Sign in UI
                ZStack{
                    
                    NavigationView {
                        VStack{
                            Text("Sign in")
                                .foregroundColor(.blue)
                                .font(.system(size: 40))
                                .fontWeight(.bold)
                                .frame(maxWidth: 290, alignment: .leading)
                                .padding(.bottom, 40)
                                .padding(.top, 80)
                            
                            //Email and password
                            VStack{
                          
                            //email text field
                                HStack {
                                    Image(systemName: "person.crop.circle.fill")
                                        .foregroundColor(.gray)
                                        
                                        
                                    TextField("Email", text: $email)
                                        .frame(width: 260, height: 25)
                                        .foregroundColor(.black)
                                        .autocapitalization(.none)
                                    
                                }
                                
                                
                                Divider()
                                    .frame(width: 250)
                                
                                //password text field
                                    HStack {
                                        Image(systemName: "lock.fill")
                                            .foregroundColor(.gray)
                                            
                                            
                                        SecureField("Password", text: $password)
                                            .frame(width: 260, height: 25)
                                            .foregroundColor(.black)
                                            .autocapitalization(.none)
                                        
                                    }
                                    
                                    .padding(.top, 20)
                                    
                                    Divider()
                                        .frame(width: 250)
                                
                            
                               //login button
                                
                                Button("login")
                                {
                                    if self.email == userEmail && self.password == userPassword
                                        {
                                        self.authenticationSuccess = true
                                    } else{
                                        self.authenticationfail = true
                                    }
                                    self.login(username1: email,password1: password)
                                    settings.isLoggedIn = true
                                }
                                .frame(width: 260, height: 10)
                                .padding()
                                .font(.system(size: 20, weight: Font.Weight.bold))
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(7)
                                .offset(y: 40)
                                
                                if authenticationfail {
                                    Text("Information is not correct or empty. Try again.")
                                        .font(.headline)
                                        .frame(width: 250, height: 80)
                                        .background(Color.red)
                                        .cornerRadius(30)
                                        .foregroundColor(.white)
                                        .animation(Animation.default)
                                }
                                if authenticationSuccess {
                                    Text("Login successful")
                                        .font(.headline)
                                        .frame(width: 250, height: 80)
                                        .background(Color.green)
                                        .cornerRadius(30)
                                        .foregroundColor(.white)
                                        .animation(Animation.default)
                                }
                                
                                Spacer()
                                VStack{
                                    NavigationLink(destination: Sign_up()
                                        .navigationBarTitle(Text(" "))
                                        .navigationBarBackButtonHidden(true)
                                        .navigationBarHidden(true),
                                                   label: {
                                    HStack{
                                //navigating to signup
                                Text("Don't have an account? ")
                            
                                        
                                            
                                                Button(action: {}, label: {
                                            Text("Sign up")
                                                .fontWeight(.bold)
                                                
                                                })
                                }
                                    })
                                }
                            }
                        }
                        .padding()
                    }
                }
                
                
        }
    }
    }

    func login(username1:String,password1:String){
            // code  for the login

            // API fetching the code...

            var semaphore = DispatchSemaphore (value: 0)

            let parameters = [
              [
                "key": "username",
                "value": username1,
                "type": "text"
              ],
              [
                "key": "password",
                "value": password1,
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
                  let paramSrc = param["src"] as! String

                    do {

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

            var request = URLRequest(url: URL(string: "http://127.0.0.1:8000/rest-auth/login/")!,timeoutInterval: Double.infinity)
            request.addValue("csrftoken=9bfde4ada05387f75574969dcbbeecda27cf813b; sessionid=jv804jx76envbhso5pj0aaa2bsylv4te", forHTTPHeaderField: "Cookie")
            request.addValue("multipart/form-data; boundary=\(boundary)", forHTTPHeaderField: "Content-Type")

            request.httpMethod = "POST"
            request.httpBody = postData

            let task = URLSession.shared.dataTask(with: request) { data, response, error in
              guard let data = data else {
                print(String(describing: error))
                semaphore.signal()
                return
              }
              print("Your result...")
              print(String(data: data, encoding: .utf8)!)
              semaphore.signal()
            }

            task.resume()
            semaphore.wait()


        }
}

struct Sign_in_Previews: PreviewProvider {
    static var previews: some View {
        Sign_in()
            .environmentObject(UserSettings())
    }
}
