//
//  mainView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 14.11.2022.
//

import SwiftUI

struct mainView: View {
    
@State private var isNewTask = false // add task
    var body: some View {
        //ru
        if(globalString.ru == true){
            VStack{
            Text("Мои цели")
                .padding()
                .foregroundColor(.white)
                .font(.title.bold())
            
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        Image("photo")
                        Image("photo")
                    }
   
            }
            .frame(maxWidth:750,maxHeight: 450)
            .background(Color("background2"))
            .cornerRadius(14)
            .padding()
            
            Button {
                self.isNewTask.toggle()
            } label: {
                Text("Добавить цель!")
                    .padding()
                    .cornerRadius(3)
                    .foregroundColor(.white)
                    .font(.title.bold())
                    .background(Color("btn"))
                    .cornerRadius(30)
            }
            .fullScreenCover(isPresented:$isNewTask) {
                NameTaskView()
            }
                
        }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))}
        //eng
        if(globalString.eng == true){
            VStack{
            Text("My Goals")
                .padding()
                .foregroundColor(.white)
                .font(.title.bold())
            
            ScrollView{
                
                
            }
            .frame(maxWidth:750,maxHeight: 750)
            .background(Color("background2"))
            .cornerRadius(14)
            .padding()
            
            Button {
                self.isNewTask.toggle()
            } label: {
                Text("Add a goal!")
                    .padding()
                    .cornerRadius(3)
                    .foregroundColor(.white)
                    .font(.title.bold())
                    .background(Color("btn"))
                    .cornerRadius(30)
            }
            .fullScreenCover(isPresented:$isNewTask) {
                NameTaskView()
            }
        }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))}
        
   
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
