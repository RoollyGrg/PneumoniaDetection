//
//  PneumoniaDetectionApp.swift
//  PneumoniaDetection
//
//  Created by Bibek Gurung on 13/02/2022.
//

import SwiftUI

@main
struct PneumoniaDetectionApp: App {
    var body: some Scene {
        WindowGroup {
            Sign_in()
                .environmentObject(UserSettings())
            
        }
    }
}
