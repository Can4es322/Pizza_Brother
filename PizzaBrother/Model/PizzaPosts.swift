//
//  PizzaPosts.swift
//  PizzaBrother
//
//  Created by User on 18.04.2022.
//

import SwiftUI

struct PizzaPosts: Identifiable,Hashable{
    var id = UUID().uuidString
    var image: [String]
    var title: String
    var info: String
    var price: Int
}


var pizzaPosts = [
    PizzaPosts(image: ["Pizza","PizzaBig"], title: "Пицца 3 Курочки", info: "Овощи гриль,томаты, красный лук, моцарелла, соус петро, томатный соус, чеснок", price: 690),
    PizzaPosts(image: ["Pizza1","PizzaBig1"],title: "Домашняя", info: "Овощи гриль,томаты, красный лук, моцарелла, соус петро, томатный соус, чеснок", price: 559),
    PizzaPosts(image: ["Pizza2","PizzaBig2"],title: "Класическая", info: "Овощи гриль,томаты, красный лук, моцарелла, соус петро, томатный соус, чеснок", price: 490),
    PizzaPosts(image: ["Pizza3","PizzaBig3"],title: "Ветчина и сыр", info: "Овощи гриль,томаты, красный лук, моцарелла, соус петро, томатный соус, чеснок", price: 690),
    PizzaPosts(image: ["Pizza4","PizzaBig4"],title: "Карбонара", info: "Овощи гриль,томаты, красный лук, моцарелла, соус петро, томатный соус, чеснок", price: 790),
    PizzaPosts(image: ["Pizza5","PizzaBig5"],title: "Пепперони", info: "Овощи гриль,томаты, красный лук, моцарелла, соус петро, томатный соус, чеснок", price: 550)
]
