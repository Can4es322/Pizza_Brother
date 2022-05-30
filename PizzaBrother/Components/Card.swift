//
//  Card.swift
//  PizzaBrother
//
//  Created by User on 15.04.2022.
//

import SwiftUI

struct Card: View {
    
    var placeHolderTitle: String
    var placeHolderPrice: Int
    
    var body: some View {
        HStack(spacing: 8){
            Image("small")
                .frame(width: 94)
                
            
            VStack(alignment: .leading, spacing: 8){
                Text(placeHolderTitle)
                    .foregroundColor(.black)
                    .font(Font.custom("Roboto-Regular", size: 16))
                  

                Text("от \(placeHolderPrice) Р")
                    .frame(width: 64, height: 22)
                    .foregroundColor(Color("orange1"))
                    .font(Font.custom("Roboto-Regular", size: 16))
                    .background(Color("orange2"))
                    .cornerRadius(999)

                
            }
            
            
        }
        .frame(width: 207, height: 98)
        .cornerRadius(3)
        .border(Color("gray3"),width:1)

    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(placeHolderTitle: "Овощи Гриль", placeHolderPrice: 299)
    }
}
