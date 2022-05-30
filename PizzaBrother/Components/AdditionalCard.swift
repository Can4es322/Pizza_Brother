//
//  AdditionalCard.swift
//  PizzaBrother
//
//  Created by User on 26.04.2022.
//

import SwiftUI

struct AdditionalCard: View {
    var body: some View {
        HStack(spacing: 25){
            VStack{
                
                Image("pineapple")
                
                Text("Ананасы")
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                
                Text("+59 Р")
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                    .padding(.top,10)
                    .padding(.bottom,15)
                
            }
            .frame(maxWidth: 100, maxHeight: 150)
            .background(
                Rectangle()
            .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
        )
            
            
            VStack{
                
                Image("pineapple")
                
                Text("Ананасы")
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                
                Text("+59 Р")
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                    .padding(.top,10)
                    .padding(.bottom,15)
                
            }
            .frame(maxWidth: 100, maxHeight: 150)
            .background(
                Rectangle()
            .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
        )
            
            VStack{
                
                Image("pineapple")
                
                Text("Ананасы")
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                
                Text("+59 Р")
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                    .padding(.top,10)
                    .padding(.bottom,15)
                
            }
            .frame(maxWidth: 100, maxHeight: 150)
            .background(
                Rectangle()
            .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
        )
        }
        .foregroundColor(.white)

    }
}

struct AdditionalCard_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalCard()
    }
}
