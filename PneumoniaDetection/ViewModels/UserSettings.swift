//
//  UserSettings.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 05/06/2022.
//


import Foundation

class UserSettings: ObservableObject{
    @Published var isLoggedIn : Bool {
        didSet{
            UserDefaults.standard.set(isLoggedIn, forKey: "login")
        }
    }
    
    init(){
        self.isLoggedIn = false
    }
}
