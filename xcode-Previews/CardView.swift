//
//  CardView.swift
//  xcode-Previews
//
//  Created by icelkas on 20/10/2021.
//

import SwiftUI
import Foundation

struct CardView: View {
    
    let tapped: Bool
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack{
            
            Image("d2")
                .resizable()
                .scaleEffect(self.scale )
                .frame(width: 300, height: 300)
                .gesture(MagnificationGesture()
                            .onChanged { value in
                                self.scale = value.magnitude //state property render the body view again
                            }
                )
                
            
            Text("Card")
                .foregroundColor(.white)
                .font(.title)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(self.tapped ? Color.red : Color.purple)
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(tapped: false)
    }
}
