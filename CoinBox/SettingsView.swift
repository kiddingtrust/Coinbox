//
//  SettingsView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 14.11.2022.
//

import SwiftUI

struct SettingsView: View {
@State private var showLaunchScreen = false // back to launck screen
@State private var isRu = globalString.ru // language check
    
    var body: some View {
        VStack{
            Spacer()
            
            Text(isRu ? "Язык" : "language")
                      .foregroundColor(.white)
                      .font(.headline)
                      .font(.headline.bold())
                      .frame(maxWidth: 250,maxHeight: 30)
                            .background(Color("btn"))
                            .cornerRadius(16)
            
            
            VStack{
                //ru
                Button {
                    globalString.ru = true
                    globalString.eng = false
                    self.showLaunchScreen.toggle()
                    
                } label: {
                    HStack{
                        Image("ru")
                            .padding(.bottom,15)
                            .padding(.top,15)
                        Text("Russian")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.bottom,15)
                            .padding(.top,15)
                    }
                }
                .fullScreenCover(isPresented: $showLaunchScreen) {
                             LaunchScreen()
                         }
                //eng
                Button {
                           globalString.ru = false
                           globalString.eng = true
                    self.showLaunchScreen.toggle()
                       } label: {
                           HStack{
                               Image("en")
                                   .padding(.bottom,15)
                                   .padding(.top,15)
                               Text("English")
                                   .foregroundColor(.white)
                                   .font(.headline)
                                   .padding(.bottom,15)
                                   .padding(.top,15)
                           }
                       }
                       .fullScreenCover(isPresented: $showLaunchScreen) {
                                    LaunchScreen()
                                }
                        
            }
            
            
            Spacer()
            
            
            
            
            Button {
            self.showLaunchScreen.toggle()
            } label: {
                Text(globalString.ru ? "Назад" : "Back")
                    .padding()
                    .cornerRadius(3)
                    .foregroundColor(.white)
                    .font(.title.bold())
                    .background(Color("btn"))
                    .cornerRadius(30)
                    .padding(.bottom,27)
            }
            .fullScreenCover(isPresented: $showLaunchScreen) {
                         LaunchScreen()
                     }
            .padding(.bottom,15)
            
        }
       .frame(maxWidth: .infinity,maxHeight: .infinity)
           .ignoresSafeArea()
           .background(Color("background"))
   
        

            
           
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
