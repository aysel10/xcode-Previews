//
//  DishCell.swift
//  xcode-Previews
//
//  Created by icelkas on 19/10/2021.
//

import Foundation
import SwiftUI

struct DishCell: View {
    
    let dish: Dish
    
    var body: some View {
        
            HStack{
                Image(dish.imageUrl)
                    .resizable()
                    .frame(width:100, height:100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text(dish.name)
                    Text("\(dish.price)")
                }
            }
        
    }
}

#if DEBUG

struct DishCell_Preview: PreviewProvider {
    static var previews: some View {
        
        Group {
            /*
            DishCell().colorScheme(.dark)
                .previewLayout(.sizeThatFits)
            
            DishCell().previewDevice("iPhone SE")
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .large)
            DishCell().previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .extraExtraLarge) */
            DishCell(dish: Dish(name: "as", price: 23, imageUrl: "d1")).previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, .small)
        }
    }
}

#endif
