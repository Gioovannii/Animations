//
//  CustomizeAnimationView.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/9.
//

import SwiftUI

struct CustomizeAnimationView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                    .stroke(Color.red)
                    .scaleEffect(animationAmount)
                    .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeInOut(duration: 1)
        //                .delay(1)
        //                .repeatCount(3, autoreverses: true)
                        .repeatForever(autoreverses: false)
                )
            )
        .onAppear {
            animationAmount = 2
        }
//        .scaleEffect(animationAmount)
        //        .blur(radius: (animationAmount - 1) * 3)
        //        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
        
    }
}

struct CustomizeAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeAnimationView()
    }
}
