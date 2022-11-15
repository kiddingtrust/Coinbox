//
//  PhotoView.swift
//  CoinBox
//
//  Created by Данила Кардашевский on 15.11.2022.
//

import SwiftUI

struct PhotoView: View {
@State private var isRu = globalString.ru
@State private var showFinishView = false
    
    var body: some View {
        //ru
        if (isRu == true){
            VStack{
            Text("Хотите ли вы поставить картинку?")
                .padding(.bottom,1)
                .foregroundColor(.white)
                .font(.headline.bold())
                
                Image("photo")
                    .padding(.top,70)
                    .padding(.bottom,70)
                
                Button {
                    
                } label: {
                    Text("Выбрать фотографию")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .padding(.bottom,20)
            
            Button {
                self.showFinishView.toggle()
            } label: {
                Text("Далее")
                    .padding()
                    .cornerRadius(3)
                    .foregroundColor(.white)
                    .font(.title.bold())
                    .background(Color("btn"))
                    .cornerRadius(30)
            }
            .fullScreenCover(isPresented: $showFinishView) {
                FinishaddView()
            }
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("background"))
            
        }
        //eng
        if (isRu == false){
            VStack{
            Text("Do you want to put a picture?")
                .padding(.bottom,1)
                .foregroundColor(.white)
                .font(.headline.bold())
                
                Image("photo")
                    .padding(.top,70)
                    .padding(.bottom,70)
                
                Button {
                    
                } label: {
                    Text("Choose photo")
                        .padding()
                        .cornerRadius(3)
                        .foregroundColor(.white)
                        .font(.title.bold())
                        .background(Color("btn"))
                        .cornerRadius(30)
                }
                .padding(.bottom,20)
            
            Button {
                self.showFinishView.toggle()
            } label: {
                Text("Next")
                    .padding()
                    .cornerRadius(3)
                    .foregroundColor(.white)
                    .font(.title.bold())
                    .background(Color("btn"))
                    .cornerRadius(30)
            }
            .fullScreenCover(isPresented: $showFinishView) {
                FinishaddView()
                
            }
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("background"))
            
        }
        
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
