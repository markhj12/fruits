//
//  FructusApp.swift
//  Fructus
//
//  Created by Mark Hew on 11/2/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding) {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
