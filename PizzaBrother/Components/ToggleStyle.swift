//
//  ToggleStyle.swift
//  PizzaBrother
//
//  Created by User on 20.04.2022.
//

import SwiftUI

struct ToggleStyle: ToggleStyle {

    func makeBody(configuration: Configuration) -> some View{
        
        return HStack{
            
            configuration.label
            
            Spacer()
            
            Image(configuration.isOn ? "" : "")
            
        }
    }
}


