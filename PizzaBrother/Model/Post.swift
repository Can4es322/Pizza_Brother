//
//  Post.swift
//  PizzaBrother
//
//  Created by User on 15.04.2022.
//

import SwiftUI


struct Post: Identifiable, Hashable{
    var id = UUID().uuidString
    var title: String
    var price: Int
    
}

var posts = [
    Post(title: "Pizza1", price: 300),
    Post(title: "Pizza2", price: 400),
    Post(title: "Pizza3", price: 500),
    Post(title: "Pizza4", price: 600),
    Post(title: "Pizza5", price: 700)
]




