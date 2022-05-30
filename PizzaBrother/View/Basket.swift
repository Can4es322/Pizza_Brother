//
//  Basket.swift
//  PizzaBrother
//
//  Created by User on 20.04.2022.
//

import SwiftUI

struct Basket: View {
    var body: some View {
        VStack{
            Text("Корзина")
                .frame(maxWidth:.infinity , maxHeight: 28, alignment: .leading)
                .font(Font.custom("Roboto-Bold", size: 24))
                .foregroundColor(.black)
                .padding(.top,30)
                .padding(.leading,30)
            
                VStack{
                    Text("Ой, пусто!")
                        .frame(maxWidth: .infinity, maxHeight: 23, alignment: .center)
                        .font(Font.custom("Roboto-Medium", size: 20))
                        
                    Text("Ваша корзина пуста, добавьте понравившийся товар из предложенных на главной странице.")
                        .frame(width: 265, alignment: .center)
                        .font(Font.custom("Roboto-Regular", size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.top,13)
                        
                    
                    
                        Text("На главную")
                            .frame(width: 94, height: 32, alignment: .center)
                            .font(Font.custom("Roboto-Regular", size: 14))
                            .foregroundColor(.white)
                            .background(Color("orange3"))
                            .cornerRadius(999)
                    

                    
                }
                .padding(.top,250)
                


            
            
            Spacer()
        }
    }
}

struct Basket_Previews: PreviewProvider {
    static var previews: some View {
        Basket()
    }
}
