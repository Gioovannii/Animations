//
//  AnimationLettersView.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/11.
//

import SwiftUI

struct AnimationLettersView: View {
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero

    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? Color.blue : Color.red)
                    .offset(dragAmount)
                    .animation(Animation.default.delay(Double(num) / 20))
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

struct AnimationLettersView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationLettersView()
    }
}
