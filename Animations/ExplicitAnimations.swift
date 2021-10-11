//
//  ExplicitAnimations.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/9.
//

import SwiftUI

struct ExplicitAnimations: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 3, damping: 1)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0))
    }
}

struct ExplicitAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimations()
    }
}
