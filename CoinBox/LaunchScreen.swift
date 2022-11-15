//
//  ContentView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 14.11.2022.
//

import SwiftUI
//global var
struct globalString {
    static var ru = true //language
    static var eng = false //language
}

struct LaunchScreen: View {
@State private var showmainView = false // NewView
@State private var showSettingsView = false // NewView
@State private  var showlink = false // NewView
    @State private  var ru = globalString.ru //language
    @State private  var eng = globalString.eng //language
    
    
    var body: some View {
        HStack{
            VStack{
            //ru
            if (ru==true){
            VStack {
                HStack{
                    Button {
                        self.showlink.toggle()
                        
                    } label: {
                        
                        Image(systemName: "link")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.leading,15)

                    }
                    .sheet(isPresented: $showlink){
                                   linkview()
                               }
                    Spacer()
                    
                    Button {
                        self.showSettingsView.toggle()
                    } label: {
                        
                        Image(systemName: "gear")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.trailing,15)

                    }
                    .fullScreenCover(isPresented: $showSettingsView) {
                                 SettingsView()
                             }
                }
               
                
                Spacer()
                Image("pig")
                
                Text("COIN BOX")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Text("\n")
                
                Text("СoinBox  - твоя надёжная копилка, которая поможет приблизиться к твоей мечте!")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                Spacer()
                
                Button {
                self.showmainView.toggle()
                } label: {
                    Text("Начать копить!")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .fullScreenCover(isPresented: $showmainView) {
                             mainView()
                         }

            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))}
            //eng
            if (eng==true){
            VStack {
                HStack{
                    Button {
                        self.showlink.toggle()
                        
                    } label: {
                        
                        Image(systemName: "link")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.leading,15)

                    }
                    .sheet(isPresented: $showlink){
                                    linkview()
                                }
                    Spacer()
                    
                    Button {
                        self.showSettingsView.toggle()
                    } label: {
                        
                        Image(systemName: "gear")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.trailing,15)

                    }
                    .fullScreenCover(isPresented: $showSettingsView) {
                                    SettingsView()
                                }
                }
                
                
                Spacer()
                Image("pig")
                
                Text("COIN BOX")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Text("\n")
                
                Text("СoinBox - your reliable piggy bank that will help you get closer to your dream!")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                Spacer()
                
                Button {
                self.showmainView.toggle()
                } label: {
                    Text("Start saving up!")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .fullScreenCover(isPresented: $showmainView) {
                                mainView()
                            }

            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))}
        }}
        
       
    }
}

//Settingswindow
struct linkview : View{
    @Environment (\.presentationMode) var presentationMode
    
    var body:  some  View{
        //ru
        if (globalString.ru==true){
        	VStack{
            
            Spacer()
            Image("pig")
            
            Text("COIN BOX ")
                .foregroundColor(.white)
                .font(.title.bold())
            Text("\n")
            
            ScrollView{
                //links
                VStack{
                    Text("Ссылки")
                        .foregroundColor(.white)
                        .font(.headline)
                        .font(.headline.bold())
                        .frame(maxWidth: 250,maxHeight: 30)
                              .background(Color("btn"))
                              .cornerRadius(16)
                    
                    VStack{
                        //git
                        Button {

                        } label: {
                            Image("en")
                                .padding(.bottom,15)
                                .padding(.top,15)
                             Text("GitHub")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding(.bottom,15)
                                .padding(.top,15)
                        }
                        //telegram
                        Button {

                        } label: {
                            Image("en")
                                .padding(.bottom,15)
                                .padding(.top,15)
                             Text("Telegram")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding(.bottom,15)
                                .padding(.top,15)
                        }
                        

                    }
                    .frame(maxWidth: 250,maxHeight: 200)
                    .ignoresSafeArea()
                    .background(Color("btn"))
                    .cornerRadius(16)
                    
                }
                .padding(.top,15)
           
            }
                
            Spacer()
            
            
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Назад")
                    .padding()
                    .cornerRadius(3)
                    .foregroundColor(.white)
                    .font(.title.bold())
                    .background(Color("btn"))
                    .cornerRadius(30)
                    .padding(.bottom,15)
            }
            
            
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Color("background"))}
        //EN
        if (globalString.eng==true) {
                VStack{
                
                Spacer()
                Image("pig")
                
                Text("COIN BOX ")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Text("\n")
                
                ScrollView{
                       
                    //links
                    VStack{
                        Text("Links")
                            .foregroundColor(.white)
                            .font(.headline)
                            .font(.headline.bold())
                            .frame(maxWidth: 250,maxHeight: 30)
                                  .background(Color("btn"))
                                  .cornerRadius(16)
                        
                        VStack{
                            //git
                            Button {

                            } label: {
                                Image("en")
                                    .padding(.bottom,15)
                                    .padding(.top,15)
                                 Text("GitHub")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding(.bottom,15)
                                    .padding(.top,15)
                            }
                            //telegram
                            Button {

                            } label: {
                                Image("en")
                                    .padding(.bottom,15)
                                    .padding(.top,15)
                                 Text("Telegram")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding(.bottom,15)
                                    .padding(.top,15)
                            }
                            

                        }
                        .frame(maxWidth: 250,maxHeight: 200)
                        .ignoresSafeArea()
                        .background(Color("btn"))
                        .cornerRadius(16)
                        
                    }
                    .padding(.top,15)
               
                }
                    
                Spacer()
                
                Button {
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text(globalString.eng ? "Back" : "Назад")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                        .padding(.bottom,15)
                }
                
                
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
                .ignoresSafeArea()
                .background(Color("background"))
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
