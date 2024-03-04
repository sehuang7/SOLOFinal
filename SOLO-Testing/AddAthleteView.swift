//
//  AddAthleteView.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 3/3/24.
//

import SwiftUI

struct AddAthleteView: View {
    @EnvironmentObject var settings: UserSettings
    
    @Environment(\.dismiss) var dismiss
     
    @State  private var username: String = ""
    @State  private var emailAddress: String = ""
    @State  private var phone: String = ""
    
    static let color0 = Color(red: 52/255, green: 153/255, blue: 205/255);
    static let color1 = Color(red: 52/255, green: 133/255, blue: 205/255);
    static let color2 = Color(red: 53/255, green: 77/255, blue: 205/255);
    static let color3 = Color(red: 38/255, green: 37/255, blue: 108/255);
    let gradient = Gradient(colors: [color0, color1, color2, color3]);
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(spacing:120) {
                    Text("CREATE ACCOUNT")
                        .font(Font.custom("Poppins-SemiBold", size:24))
                        .padding(.leading,15)
                        .foregroundColor(.white)
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName:"xmark").foregroundColor(.white)
                        
                    }
                }
                .frame(width: 400, height: 80, alignment: .leading)
                .background(LinearGradient(
                    gradient: gradient,
                    startPoint: .init(x: -0.1, y: 0.15),
                    endPoint: .init(x: 0.85, y: 0.85)
                  ))
                
                Text("Name")
                    .frame(width:300, alignment:.leading)
                    .font(Font.custom("Poppins-Medium", size: 24))
                    .padding(.top, 35)
                
                TextField("Name", text: self.$username)
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
                    dismiss()
                    self.settings.navigateNowToAddAthlete = false
                }) {
                       HStack {
                           Text("Add Athlete")
                               .font(Font.custom("Poppins-Medium", size: 18))
                       }.frame(width: 300, height: 40)
                       .foregroundColor(Color(.white))
                       .background(Color(red: 0.208, green: 0.298, blue: 0.804)) // #354ccd
                       .cornerRadius(10)
                       .padding(.bottom, 5)
                       .padding(.top, 20)
                }
                
                Spacer()
            }
        }
            .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    AddAthleteView()
}
