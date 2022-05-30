//
//  CardFilter.swift
//  PizzaBrother
//
//  Created by User on 18.04.2022.
//

import SwiftUI

struct CardFilter: View {
    var placeHolder: String
    @State var showColor = false
    
    var body: some View {
        
        Button(action:{
            showColor.toggle()
        }){
            Text(placeHolder)
                .frame(width: 62, height: 18, alignment: .center)
                .font(Font.custom("Roboto-Regular", size: 14))
                .foregroundColor(showColor == true ? Color("orange1") : Color("textGray"))
                .background(showColor == true ? Color("orange2") : Color("bgGray"))
                .cornerRadius(999)
                
        }

            
        
    }
}

struct CardFilter_Previews: PreviewProvider {
    static var previews: some View {
        CardFilter(placeHolder: "Pizza")
    }
}
