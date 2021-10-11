//
//  AnimationStack.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/10.
//

import SwiftUI

struct AnimationStack: View {
    @State private var enable = false
    
    var body: some View {
        Button("Tap Me") {
            // do nothing
            enable.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enable ? Color.red : Color.blue)
        .animation(nil)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enable ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))

    }
}

struct AnimationStack_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStack()
    }
}
