//
//  Pizza.swift
//  PizzaBrother
//
//  Created by User on 26.04.2022.
//

import SwiftUI

struct Pizza: View {
    
    var placeHolderImage: [String]
    var placeHolderTitle: String
    var placeHolderInfo: String
    var placeHolderPrice: Int
    
    var pizzaSize = ["Маленькая","Средняя","Большая"]
    @State private var selectedSize = 0
    @Environment (\.dismiss) var dismiss
    
    
    var body: some View {
    
            VStack{
                
                Button{
                    dismiss()
                }label:{
                    Image("Back")
                        .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading,20)
                .padding(.top,10)
                
                Image(placeHolderImage[1])
                    .padding(.top, -30)
                    
                
                Text(placeHolderTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.custom("Roboto-Bold", size: 22))
                    .padding(.leading,15)
                
                Text(placeHolderInfo)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.custom("Roboto-Regular", size: 16))
                    .padding(.leading, 15)
                    .padding(.top, -5)
                
                Picker(selection: $selectedSize,label: Text("fdfd")){
                    ForEach(0..<pizzaSize.count){element in
                        Text(self.pizzaSize[element])
                            .foregroundColor(.black)
                            .font(Font.custom("Roboto-Medium", size: 20))
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal,20)
                .padding(.top,5)
                    
                Text("Добавить в пиццу")
                    .font(Font.custom("Roboto-Bold", size: 22))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading,15)
                    .padding(.top,5)
                
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing:20){
                        AdditionalCard()
                        AdditionalCard()
                        AdditionalCard()
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Добавить в корзину за \(placeHolderPrice) Р")
                        .frame(maxWidth: 345, maxHeight: 43, alignment: .center)
                        .foregroundColor(.white)
                        .font(Font.custom("Roboto-Regular", size: 16))
                        .background(Color("orange1"))
                        .cornerRadius(999)
                        
                }
                .padding(.top)
                
                
                

                
                
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)

    }
    
}


