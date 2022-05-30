//
//  ContentView.swift
//  PizzaBrother
//
//  Created by User on 06.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 1
    
    var body: some View {
            TabView(selection: $selectedTab){
                Home()
                    .onTapGesture {
                        selectedTab = 1
                    }
                    .tabItem {
                        Image("HomeGray")
                            .renderingMode(.template)
                    }
                    
                
                Profile()
                    .onTapGesture {
                        selectedTab = 2
                    }
                    .tabItem {
                        Image("Profile")
                            .renderingMode(.template)
                    }
                
                Contacts()
                    .onTapGesture {
                        selectedTab = 3
                    }
                    .tabItem {
                        Image("Contacts")
                            .renderingMode(.template)
                    }
                
                Basket()
                    .onTapGesture {
                        selectedTab = 4
                    }
                    .tabItem {
                        Image("Basket")
                            .renderingMode(.template)
                    }
            }
            .accentColor(.orange)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
