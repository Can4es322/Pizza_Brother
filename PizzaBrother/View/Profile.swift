//
//  Profile.swift
//  PizzaBrother
//
//  Created by User on 20.04.2022.
//

import SwiftUI

struct Profile: View {

    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Профиль")
                        .font(Font.custom("Roboto-Bold", size: 24))
                        .foregroundColor(.black)
                        .padding(.leading,30)
                    Spacer()
                    
                    NavigationLink(destination: Setting()){
                        Image("Settings")
                            .padding(.trailing,22)
                    }
                }
                
                Image("Avatar")
                    .padding(.top,22)
                
                Text("Александр Курыс")
                    .font(Font.custom("Roboto-Medium", size: 20))
                    .foregroundColor(.black)
                    .padding(.top,36)
        
                Text("Ваши прошлые заказы")
                    .frame(maxWidth: .infinity, maxHeight: 23, alignment: .leading)
                    .font(Font.custom("Roboto-Medium", size: 20))
                    .padding(.top,40)
                    .foregroundColor(.black)
                    .padding(.leading,30)
            
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing:6){
                        ForEach(pizzaPosts){post in
                            PizzaCard(placeHolderImage: post.image, placeHolderTitle: post.title, placeHolderInfo: post.info, placeHolderPrice: post.price)                            .background(
                                Rectangle()
                                    .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
                            )
                       }
                    }
                }
                Spacer()
            }
            .navigationBarHidden(true)
            .foregroundColor(.white)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
       
}



struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
