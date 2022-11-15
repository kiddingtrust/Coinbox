//
//  FinishaddView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 15.11.2022.
//

import SwiftUI

struct FinishaddView: View {
@State private var isRu = globalString.ru
@State private var showMain = false
    var body: some View {
        //ru
        if (isRu == true){
            VStack{
                Text("Поздравляем ваша цель добавлена!")
                    .padding(.bottom,1)
                    .foregroundColor(.white)
                    .font(.headline.bold())

                Image("photo")
                    .padding(.top,15)
                    .padding(.bottom,15)
                  
                Button {
                    self.showMain.toggle()
                } label: {
                    Text("На главную")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .fullScreenCover(isPresented: $showMain) {
                    mainView()
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))
        }
        //eng
        if (isRu == false){
            VStack{
                Text("Congratulations your goal has been added!")
                    .padding(.bottom,1)
                    .foregroundColor(.white)
                    .font(.headline.bold())

                Image("photo")
                    .padding(.top,15)
                    .padding(.bottom,15)
                  
                Button {
                    self.showMain.toggle()
                } label: {
                    Text("Go Main")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .fullScreenCover(isPresented: $showMain) {
                    mainView()
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("background"))
        }
 
    }
}

struct FinishaddView_Previews: PreviewProvider {
    static var previews: some View {
        FinishaddView()
    }
}
