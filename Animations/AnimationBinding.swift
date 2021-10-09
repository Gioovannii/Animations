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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AnimationBinding_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBinding()
    }
}
