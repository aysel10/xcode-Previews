//
//  Dish.swift
//  xcode-Previews
//
//  Created by icelkas on 20/10/2021.
//

import Foundation

struct Dish: Hashable {
    var name: String
    var price: Double
    var imageUrl: String
    
    
}

extension Dish {
    static func all() -> [Dish] {
        return [
            Dish(name: "Lasagna", price: 12, imageUrl: "d1"),
            Dish(name: "Bolognese", price: 11, imageUrl: "d2"),
            Dish(name: "Napolitana", price: 15, imageUrl: "d3"),
            Dish(name: "Popuchka", price: 10, imageUrl: "d4"),
            Dish(name: "Pam Pam Yeda", price: 15, imageUrl: "d5")
        ]
    }
}
