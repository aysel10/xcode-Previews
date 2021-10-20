//
//  ContentView.swift
//  xcode-Previews
//
//  Created by icelkas on 19/10/2021.
//

import SwiftUI

struct ContentView: View {
    
   // let dishes = Dish.all()
    @State private var tapped: Bool = false
    @State private var cardDragState: CGSize = CGSize.zero
    @State private var rotateState: Double = 0
    
    var body: some View {
        
        CardView(tapped: self.tapped)
            .animation(.default)
            .offset(y: cardDragState.height)
            .rotationEffect(Angle(degrees: self.rotateState))
            .gesture(DragGesture()
                        .onChanged { value in
                            self.cardDragState = value.translation
                        }
                        .onEnded { value in
                            self.cardDragState = CGSize.zero
                            
                        }
            )
            .gesture(TapGesture(count: 1)
                        .onEnded({ () in
                            self.tapped.toggle()
                        }))
            .gesture(RotationGesture()
                        .onChanged { value in
                            self.rotateState = value.degrees
                            
                        })
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


