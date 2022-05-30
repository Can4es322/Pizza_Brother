//
//  Home.swift
//  PizzaBrother
//
//  Created by User on 20.04.2022.
//

import SwiftUI

struct Home: View {
    
    @State private var search=""
    
    @State var selectedTab: Post = posts[0]
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("gray2"))
                        
                        Spacer(minLength: 1)
                        
                        TextField("Поиск по названию",text:$search)
                            .foregroundColor(Color("gray2"))
                    }
                
                    HStack{
                        Text("Москва")
                            .foregroundColor(Color("gray1"))
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color("gray1"))
                    }
                    
                    
                }
                .frame(width: 335, height: 41)
                .padding([.leading,.trailing],20)
                .background(Color("white1"))
                .cornerRadius(10)
                .padding(.top,15)
                
                HStack{
                    Text("Часто заказывают")
                        .foregroundColor(.black)
                        .font(Font.custom("Roboto-Bold", size: 22))
                        .padding(.leading,9)
                        .padding(.top,24)
                   Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:9){
                        ForEach(posts){post in
                            Card(placeHolderTitle: post.title, placeHolderPrice: post.price)
                                .background(
                                    Rectangle()
                                        .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
                                )
                                
                        }
                    }
                    .padding([.leading,.trailing], 8)
                    .padding(.bottom,6)
                    
                }
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 20){
                        ForEach(postsFilters){post in
                            CardFilter(placeHolder: post.name)
                        }
                    }
                }
                .padding(.top,24)
                .padding([.leading,.trailing], 9)
                
                
                ScrollView(.vertical,showsIndicators: false){
                    VStack(spacing:6){
                        ForEach(pizzaPosts){post in
                            PizzaCard(placeHolderImage:post.image ,placeHolderTitle: post.title, placeHolderInfo: post.info, placeHolderPrice: post.price)
                                .background(
                                    Rectangle()
                                .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
                            )
                       }
                    }
                }
                

                Spacer()
                

                
                
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .foregroundColor(.white)
        }
   

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
