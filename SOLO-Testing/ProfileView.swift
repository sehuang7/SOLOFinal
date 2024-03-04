//
//  ProfileView.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 2/13/24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var settings: UserSettings
    
    static let color0 = Color(red: 52/255, green: 153/255, blue: 205/255);
    static let color1 = Color(red: 52/255, green: 133/255, blue: 205/255);
    static let color2 = Color(red: 53/255, green: 77/255, blue: 205/255);
    static let color3 = Color(red: 38/255, green: 37/255, blue: 108/255);
    let gradient = Gradient(colors: [color0, color1, color2, color3]);
    
    
    @State  private var username: String = ""
    @State  private var emailAddress: String = ""
    @State  private var phone: String = ""
    
    var body: some View {
        
        GeometryReader { g in
            VStack {
                //POTENTIAL
                HStack (spacing:190){
                    Text("MY PROFILE")
                        .font(Font.custom("Poppins-SemiBold", size:24))
                        .padding(.leading,15)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        self.settings.loggedIn = false
                        self.settings.navigateNowToLogIn = false
                        self.settings.navigateNowToSignup = false
                        self.settings.navigateNowToCompletion = false
                        
                    }) {
                        VStack {
                            Image(systemName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(.white)
                                .font(Font.custom("Poppins-SemiBold", size: 18))
                            Text("Log Out")
                                .font(Font.custom("Poppins-Regular", size: 10))
                                .foregroundColor(.white)
                        }
                    }
                    
                    
                }
                .frame(width: 400, height: 80, alignment: .leading)
                .background(LinearGradient(
                    gradient: gradient,
                    startPoint: .init(x: -0.1, y: 0.15),
                    endPoint: .init(x: 0.85, y: 0.85)))
                
                //                HStack {
                //                    Text("MY PROFILE")
                //                        .font(Font.custom("Poppins-SemiBold", size:24))
                //                        .padding(.leading,15)
                //                        .foregroundColor(.black)
                //                        .offset(x:15)
                //
                //                    Button(action: {
                //                        self.settings.loggedIn = false
                //                        self.settings.navigateNowToLogIn = false
                //                        self.settings.navigateNowToSignup = false
                //                        self.settings.navigateNowToCompletion = false
                //
                //                    }) {
                //                        VStack {
                //                            Image(systemName: "rectangle.portrait.and.arrow.right")
                //                                .foregroundColor(.black)
                //                                .font(Font.custom("Poppins-SemiBold", size: 18))
                //                            Text("Log Out")
                //                                .font(Font.custom("Poppins-Regular", size: 10))
                //                                .foregroundColor(.black)
                //                        }
                //                    }
                //                    .offset(x:80)
                //                }
                //                .frame(height: 60)
                
                VStack (alignment:.center, spacing:20){
                    Image("WomanAthBanner1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height:200)
                        .brightness(-0.1)
                        .overlay(
                            VStack {
                                Spacer()
                                HStack {
                                    Spacer()
                                    Button(action: {}) {
                                        Image(systemName: "camera.rotate")
                                            .font(Font.custom("Poppins-Bold", size: 30))
                                            .foregroundColor(.white)
                                    }
                                    .offset(x: -25, y: -10)
                                }
                            })
                    
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
                        .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black.opacity(0.2), lineWidth: 1))
                    
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button(action: {}) {
                                Image(systemName: "pencil")
                                    .font(Font.custom("Poppins-Bold", size: 18))
                                    .foregroundColor(.white)
                                Text("Edit Profile")
                                    .foregroundColor(.white)
                                    .font(Font.custom("Poppins-Medium", size: 18))
                                    
                            }
                            .frame(width: 165, height: 40)
                            .background(LinearGradient(
                                gradient: gradient,
                                startPoint: .init(x: -0.1, y: 0.15),
                                endPoint: .init(x: 0.85, y: 0.85)
                              ))
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .offset(x: -25, y: -10)
                        }
                    }
                    
                }
                .offset(x:-4)

            }
        }
    }
}

