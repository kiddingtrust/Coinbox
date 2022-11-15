//
//  NameTaskView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 14.11.2022.
//

import SwiftUI

struct NameTaskView: View {
@State private var nametask = " "
@State private var error = ""
@State private var isRu = globalString.ru
@State private var showSummaView = false
    
    var body: some View {
        //ru
        if (isRu == true){
            VStack{
                Text("Введите название вашей цели...")
                    .padding(.bottom,1)
                    .foregroundColor(.white)
                    .font(.headline.bold())
                Text(error)
                    .foregroundColor(.white)
                    .font(.headline.bold())
                    .background(.red)
                    .cornerRadius(7)
                
                TextField("Введите здесь", text: $nametask)
                    .padding()
                    .background(Color("btn"))
                    .foregroundColor(.white)
                    .cornerRadius(17)
                    .padding()
                  
                Button {
                    if(nametask == " "){
                        error="Вы не ввели название для вашей цели!"
                    }
                    else{
                        self.showSummaView.toggle()
                    }
                    
                } label: {
                    Text("Далее")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .fullScreenCover(isPresented: $showSummaView) {
                    SummaView()
                }
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))
        }
        //eng
        if (isRu == false){
            VStack{
                Text("Enter the name of your goal...")
                    .padding(.bottom,1)
                    .foregroundColor(.white)
                    .font(.headline.bold())
                
                Text(error)
                    .foregroundColor(.white)
                    .font(.headline.bold())
                    .background(.red)
                    .cornerRadius(7)
                
                TextField("Enter here", text: $nametask)
                    .padding()
                    .background(Color("btn"))
                    .foregroundColor(.white)
                    .cornerRadius(17)
                    .padding()
                  
                Button {
                    if(nametask == " "){
                        error="You didn't enter a name for your goal!"
                    }
                    else{
                        self.showSummaView.toggle()
                    }
                } label: {
                    Text("Next")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .fullScreenCover(isPresented: $showSummaView) {
                    SummaView()
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))
        }
        
    }
}

struct NameTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NameTaskView()
    }
}
