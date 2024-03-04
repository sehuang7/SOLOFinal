//
//  SOLO_TestingApp.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 2/13/24.
//

import SwiftUI

@main
struct SOLO_TestingApp: App {
    
    @EnvironmentObject var settings: UserSettings
    
    var body: some Scene {
        WindowGroup {
            StartView().environmentObject(UserSettings())
        }
    }
}
