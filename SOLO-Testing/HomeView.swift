//
//  HomeView.swift
//  SOLO-Testing
//
//  Created by Serena Huang on 2/13/24.
//

import SwiftUI

struct AthleteInfo : Hashable{
    let name: String
    let image: String
    let location: String
    
}


struct CurrentAthleteView: View {
    static let color0 = Color(red: 52/255, green: 153/255, blue: 205/255);
    static let color1 = Color(red: 52/255, green: 133/255, blue: 205/255);
    static let color2 = Color(red: 53/255, green: 77/255, blue: 205/255);
    static let color3 = Color(red: 38/255, green: 37/255, blue: 108/255);
    let gradient = Gradient(colors: [color0, color1, color2, color3]);
  
    let currentAthlete: AthleteInfo
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        GeometryReader { g in
            VStack {
                HStack (spacing:100){
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName:"arrow.left")
                            .foregroundColor(.black)
                            .font(Font.custom("Poppins-SemiBold", size: 32))
                        
                    }
                    Text("SOLO")
                        .font(Font.custom("Poppins-SemiBold", size:24))
                        .padding(.leading,15)
                        .foregroundColor(.black)
                        .offset(x:-5)
                    
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "chart.line.uptrend.xyaxis.circle.fill")
                            .foregroundColor(.black)
                            .font(Font.custom("Poppins-SemiBold", size: 32))
                        
                    }
                    
                }
                .frame(height: 60)
                
                Image("WomanAthBanner1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height:200)
                    .brightness(-0.1)
                    .overlay(
                        VStack (alignment:.leading) {
                            Text("\(currentAthlete.name)")
                                .font(Font.custom("Poppins-SemiBold", size:32))
                                .foregroundColor(.white)
                                .textCase(.uppercase)
                            
                            Text("Pronouns")
                                .font(Font.custom("Poppins-Regular", size:16))
                                .foregroundColor(.white)
                            
                        }.frame(width:375, height:200, alignment: .bottomLeading))
                
                Text("Videos/Images Shared")
                    .font(Font.custom("Poppins-Medium", size:24))
                    .padding(.top, 30)
                
                ScrollView {
                    ForEach(1..<5) { i in
                        Button(action: {
                        }) {
                            VStack {
                                Text("Video #\(i)")
                                    .font(Font.custom("Poppins-Semibold", size:20))
                            }
                            .foregroundColor(.black.opacity(0.6))
                        }
                        .frame(width: 350, height: 110)
                        .overlay(
                            RoundedRectangle(cornerRadius: 2)
                                .stroke(.black.opacity(0.6), lineWidth: 1)
                        )
                    }
                    // HERE WOULD FOR LOOP EACH VIDEO
                    
                    
                }
            }
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "plus")
                                .font(Font.custom("Poppins-Bold", size: 18))
                                .foregroundColor(.white)
                            Text("Add Media")
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
    }
 
}


struct HomeView: View {
    @EnvironmentObject var settings: UserSettings
    
    static let color0 = Color(red: 52/255, green: 153/255, blue: 205/255);
    static let color1 = Color(red: 52/255, green: 133/255, blue: 205/255);
    static let color2 = Color(red: 53/255, green: 77/255, blue: 205/255);
    static let color3 = Color(red: 38/255, green: 37/255, blue: 108/255);
    let gradient = Gradient(colors: [color0, color1, color2, color3]);
    
    
    private let adaptiveColumn = [
            GridItem(.adaptive(minimum: 150))
        ]
    
    var data: [AthleteInfo] = [
        AthleteInfo(name:"Lucy", image: "WomenAth1", location:"Los Angeles, CA"),
        AthleteInfo(name:"Michelle", image: "WomenAth2", location:"Costa Mesa, CA"),
        AthleteInfo(name:"Tommy", image: "ManAth1", location:"Newport Beach, CA"),
        AthleteInfo(name:"Anthony", image: "ManAth1", location:"Irvine, CA"),
        AthleteInfo(name:"Samantha", image: "WomenAth1", location:"Anaheim, CA"),
        AthleteInfo(name:"Tammy", image: "WomenAth2", location:"Torrance, CA"),
        AthleteInfo(name:"Bob", image: "ManAth1", location:"Torrance, CA"),
        AthleteInfo(name:"Alexis", image: "WomenAth2", location:"Torrance, CA"),
        AthleteInfo(name:"Patrick", image: "ManAth1", location:"Torrance, CA")
    ]
    
    var body: some View {
        GeometryReader { g in
            VStack (alignment: .center){
                HStack(spacing:70) {
                    Text("MY CURRENT ATHLETES")
                        .font(Font.custom("Poppins-SemiBold", size:24))
                        .padding(.leading,15)
                        .foregroundColor(.white)

                }
                .frame(width: 400, height: 80, alignment: .leading)
                .background(LinearGradient(
                    gradient: gradient,
                    startPoint: .init(x: -0.1, y: 0.15),
                    endPoint: .init(x: 0.85, y: 0.85)
                  ))
            
                ScrollView {
                    VStack {
                        ScrollView {
                            LazyVGrid(columns: adaptiveColumn, spacing:20) {
                                ForEach(data, id: \.self) { item in
                                    VStack {
                                        NavigationLink(destination:CurrentAthleteView(currentAthlete:item).navigationBarBackButtonHidden(true)){
                                            Image(item.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .brightness(-0.1)
                                                .frame(width: 165, height: 165)
                                                .background(Color(red: 0.208, green: 0.298, blue: 0.804))
                                                .cornerRadius(20)
                                                .overlay(
                                                    VStack(alignment:.leading){
                                                        Text("\(item.name)")
                                                            .foregroundStyle(.white)
                                                            .font(Font.custom("Poppins-SemiBold", size:16))
                                                            .offset(y:5)
                                                            .textCase(.uppercase)
                                                        Text("\(item.location)")
                                                            .foregroundStyle(.white)
                                                            .font(Font.custom("Poppins-Regular", size:12))
                                                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 0)), alignment: .bottomLeading)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        
                        
                    }
                    .padding()
                    .offset(x:-4)
                }
                
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.settings.navigateNowToAddAthlete = true
                    }) {
                        Image(systemName: "plus")
                            .font(Font.custom("Poppins-Bold", size: 18))
                            .foregroundColor(.white)
                        Text("Add Athlete")
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
                    .sheet(isPresented: self.$settings.navigateNowToAddAthlete) {
                        AddAthleteView()
                }
                }
            }
        }
        
    }
}




