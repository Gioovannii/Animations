//
//  ViewTransitions.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/11.
//

import SwiftUI

struct ViewTransitions: View {
    @State private var isShowingRed = false
    var body: some View {
        VStack {
            Button("Tap Me") {
                // do nothing
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
//                    .transition(.scale)
                
            }
        }
    }
}

struct ViewTransitions_Previews: PreviewProvider {
    static var previews: some View {
        ViewTransitions()
    }
}
