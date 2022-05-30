//
//  PizzaCard.swift
//  PizzaBrother
//
//  Created by User on 18.04.2022.
//

import SwiftUI

struct PizzaCard: View {
    
    var placeHolderImage: [String]
    var placeHolderTitle: String
    var placeHolderInfo: String
    var placeHolderPrice: Int
    
    var body: some View {
        
            NavigationLink(destination: Pizza(placeHolderImage: placeHolderImage, placeHolderTitle: placeHolderTitle, placeHolderInfo: placeHolderInfo, placeHolderPrice: placeHolderPrice)){
                    HStack{
                        Image(placeHolderImage[0])
                            .frame(width: 140,height: 193, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 15){
                            
                            Text(placeHolderTitle)
                                .font(Font.custom("Roboto-Bold", size: 20))
                                .foregroundColor(.black)
                            
                            Text(placeHolderInfo)
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .padding(.trailing,25)
                                .multilineTextAlignment(.leading)
                                .font(Font.custom("Roboto-Regular", size: 16))
                                .foregroundColor(.black)
                                .padding(.top, 20)
                            
                            Button(action:{
                                
                            }){
                                Text("от \(placeHolderPrice)руб.")
                                    .frame(width: 94, height: 30, alignment: .center)
                                    .font(Font.custom("Roboto-Regular", size: 14))
                                    .foregroundColor(Color("orange1"))
                                    .background(Color("orange2"))
                                    .cornerRadius(999)
                                    
                            
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .leading)
                }
            }
 
        

    }
}


