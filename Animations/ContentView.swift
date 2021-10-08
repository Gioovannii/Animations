//
//  ContentView.swift
//  Animations
//
//  Created by Giovanni Gaffé on 2021/10/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Tap Me") {
            
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
