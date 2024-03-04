//
//  LogInView.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 2/13/24.
//

import SwiftUI

struct LogInView: View {
    
    @EnvironmentObject var settings: UserSettings
    
    @State  private var username: String = ""
    @State  private var emailAddress: String = ""
    @State  private var phone: String = ""
    
    var body: some View {
        VStack (spacing: 20){
            Image("solo-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:200, height:200)
                .padding(-30)
            
            Text("SOLO Login")
                .multilineTextAlignment(.trailing)
                .font(Font.custom("Poppins-SemiBold", size: 40))
            
            
            Text("Username")
                .frame(width:300, alignment:.leading)
                .font(Font.custom("Poppins-Medium", size: 24))
            
            TextField("User Name", text: self.$username)
                .font(Font.custom("Poppins-Regular", size: 16))
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(width:300, height: 40)
                .padding(.leading,10.0)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black.opacity(0.2), lineWidth: 1))
            
            
            Text("Email Address")
                .frame(width:300, alignment:.leading)
                .font(Font.custom("Poppins-Medium", size: 24))
                
            
            TextField("User Email Address", text: self.$emailAddress)
                .font(Font.custom("Poppins-Regular", size: 16))
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(width:300, height: 40)
                .padding(.leading,10.0)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black.opacity(0.2), lineWidth: 1)
                        
                    )
            
            Text("Phone Number")
                .frame(width:300, alignment:.leading)
                .font(Font.custom("Poppins-Medium", size: 24))
               
            
            TextField("User Phone Number", text: self.$phone)
                .font(Font.custom("Poppins-Regular", size: 16))
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(width:300, height: 40)
                .padding(.leading,10.0)
                .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black.opacity(0.2), lineWidth: 1)
                        
                    )
            
            Button(action: {
                self.settings.loggedIn = true
            }) {
                   HStack {
                       Text("Login")
                           .font(Font.custom("Poppins-Medium", size: 18))
                   }.frame(width: 300, height: 40)
                   .foregroundColor(Color(.white))
                   .background(Color(red: 0.208, green: 0.298, blue: 0.804)) // #354ccd
                   .cornerRadius(10)
                   .padding(.bottom, 5)
                   .padding(.top, 20)
            }
            
            
        }
        
    }
}

#Preview {
    LogInView()

}
