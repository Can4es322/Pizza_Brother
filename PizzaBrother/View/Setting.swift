//
//  Setting.swift
//  PizzaBrother
//
//  Created by User on 20.04.2022.
//

import SwiftUI

struct Setting: View {
    
    @State private var name = ""
    @State private var number = ""
    @State private var email = ""
    @State private var birthday = ""
    @State private var isShow = false
    @State private var isShowBack = false
    @Environment (\.dismiss) var dismiss
    
    
    var body: some View {
            VStack{
                HStack{
                    Text("Настройки")
                        .font(Font.custom("Roboto-Bold", size: 24))
                        .foregroundColor(.black)
                        .padding(.leading,20)
                    
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Image("Back")
                            .shadow(color: Color("black1"), radius: 1, x: 0, y: 4)
                            .padding(.trailing,20)
                    }

                }
                .padding(.top,40)
                
                
                
                TextField("Имя", text: $name)
                    .frame(maxHeight: 41)
                    .padding([.leading,.trailing], 20)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("white1"))
                            .cornerRadius(10)
                            .shadow(color: Color("black1"), radius: 1, x: 0, y: 1)
                    )
                    .padding([.leading,.trailing], 20)
                    .foregroundColor(.black)
                    .padding(.top,10)
                    
                   
                TextField("Телефон", text: $number)
                    .frame(maxHeight: 41)
                    .padding([.leading,.trailing], 20)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("white1"))
                            .cornerRadius(10)
                            .shadow(color: Color("black1"), radius: 1, x: 0, y: 1)
                    )
                    .padding([.leading,.trailing], 20)
                    .foregroundColor(.black)
                    .padding(.top,10)
                
                
                
                TextField("Email", text: $email)
                    .frame(maxHeight: 41)
                    .padding([.leading,.trailing], 20)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("white1"))
                            .cornerRadius(10)
                            .shadow(color: Color("black1"), radius: 1, x: 0, y: 1)
                    )
                    .padding([.leading,.trailing], 20)
                    .foregroundColor(.black)
                    .padding(.top,10)
                
                
                TextField("Дата рождения", text: $birthday)
                    .frame(maxHeight: 41)
                    .padding([.leading,.trailing], 20)
                    .background(
                        Rectangle()
                            .foregroundColor(Color("white1"))
                            .cornerRadius(10)
                            .shadow(color: Color("black1"), radius: 1, x: 0, y: 1)
                    )
                    .padding([.leading,.trailing], 20)
                    .foregroundColor(.black)
                    .padding(.top,10)
                
                Image("Line")
                    .padding(.top,25)
                

                Toggle(isOn: $isShow) {
                    Text("Персональные предложения и акции")
                        .foregroundColor(.black)
                        .font(Font.custom("Roboto-Regular", size: 16))
                }
                .toggleStyle(NewToggleStyle())
                .padding([.leading, .trailing],20)
                
                Image("Line")
                    .padding(.bottom,10)
                
                
                Button {
                
                } label: {
                    Text("ВЫХОД")
                        .foregroundColor(Color("orange1"))
                        .font(Font.custom("Roboto-Regular", size: 16))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading],20)
                
                

                
                Spacer()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)


    }
}

struct NewToggleStyle : ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        return HStack{
            configuration.label
            
            Spacer()
            
            Image(configuration.isOn ? "Toggle_on" : "Toggle_off")
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
    }
    
}


struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
