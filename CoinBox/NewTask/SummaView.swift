//
//  SummaView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 15.11.2022.
//

import SwiftUI

struct SummaView: View {
    @State private var summa = " "
    @State private var error = ""
    @State private var isRu = globalString.ru
    @State private var showPhotoView = false
        
        var body: some View {
            //ru
            if (isRu == true){
                VStack{
                    Text("Сколько денег нужно для этого?")
                        .padding(.bottom,1)
                        .foregroundColor(.white)
                        .font(.headline.bold())
                    
                    Text(error)
                        .foregroundColor(.white)
                        .font(.headline.bold())
                        .background(.red)
                        .cornerRadius(7)
                    
                    TextField("Введите здесь", text: $summa)
                        .padding()
                        .background(Color("btn"))
                        .foregroundColor(.white)
                        .cornerRadius(17)
                        .padding()
                      
                    Button {
                        if(summa == " "){
                            error="Вы не ввели значение!"
                        }
                        else{
                            self.showPhotoView.toggle()
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
                    .fullScreenCover(isPresented: $showPhotoView) {
                        PhotoView()
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("background"))
            }
            //eng
            if (isRu == false){
                VStack{
                    Text("How much money is needed for this?")
                        .padding(.bottom,1)
                        .foregroundColor(.white)
                        .font(.headline.bold())
                    
                    Text(error)
                        .foregroundColor(.white)
                        .font(.headline.bold())
                        .background(.red)
                        .cornerRadius(7)
                    TextField("Enter here", text: $summa)
                        .padding()
                        .background(Color("btn"))
                        .foregroundColor(.white)
                        .cornerRadius(17)
                        .padding()
                      
                    Button {
                        if(summa == " "){
                            error="You didn't enter a summa for your goal!"
                        }
                        else{
                            self.showPhotoView.toggle()
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
                    .fullScreenCover(isPresented: $showPhotoView) {
                        PhotoView()
                    }
                    
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color("background"))
            }
            
        }
    }

struct SummaView_Previews: PreviewProvider {
    static var previews: some View {
        SummaView()
    }
}
