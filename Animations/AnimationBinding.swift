//
//  AnimationBinding.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/9.
//

import SwiftUI

struct AnimationBinding: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        print(animationAmount)
        
        return VStack {
            Stepper("Scale amount", value: $animationAmount.animation(), in: 1 ... 10)
                padding()
            
        
    }
}

struct AnimationBinding_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBinding()
    }
}
