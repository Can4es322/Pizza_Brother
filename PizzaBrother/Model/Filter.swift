//
//  Filter.swift
//  PizzaBrother
//
//  Created by User on 18.04.2022.
//

import SwiftUI

struct Filter: Identifiable,Hashable {
    var id = UUID().uuidString
    var name: String
}


var postsFilters = [
    Filter(name: "Пицца"),
    Filter(name: "Комбо"),
    Filter(name: "Закуски"),
    Filter(name: "Десерты"),
    Filter(name: "Напитки"),
    Filter(name: "Соусы"),
    Filter(name: "Другие товары")
]

