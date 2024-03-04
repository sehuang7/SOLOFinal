//
//  SignUpCompletionView.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 2/14/24.
//

import SwiftUI

struct SignUpCompletionView: View {
    @EnvironmentObject var settings: UserSettings
    
    
    static let color0 = Color(red: 52/255, green: 153/255, blue: 205/255);
    static let color1 = Color(red: 52/255, green: 133/255, blue: 205/255);
    static let color2 = Color(red: 53/255, green: 77/255, blue: 205/255);
    static let color3 = Color(red: 38/255, green: 37/255, blue: 108/255);
    let gradient = Gradient(colors: [color0, color1, color2, color3]);
    
    
    var body: some View {
        LinearGradient(gradient: gradient,startPoint: .init(x: 0.0, y: 0.5), endPoint: .init(x: 1.0, y: 0.5))
            .ignoresSafeArea()
            .overlay(
                VStack (spacing: 250) {
                    VStack {
                        Image("signup-completion")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:200, height:200)
                        
                        Text("Account Created!")
                            .font(Font.custom("Poppins-SemiBold", size: 36))
                            .foregroundColor(.white)
                    }
                    .offset(y:-50)
                    Button(action: {
                        self.settings.loggedIn = true
                        self.settings.navigateNowToSignup = false
                        self.settings.navigateNowToCompletion = false
                    }) {
                           HStack {
                               Text("Start Exploring").font(Font.custom("Poppins-Medium", size: 18))
                           }.frame(width: 300, height: 40)
                           .foregroundColor(Color(red: 0.208, green: 0.298, blue: 0.804))
                           .background(.white)
                           .cornerRadius(10)
                    }
                })
    }
}
