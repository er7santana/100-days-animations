//
//  AnimationStack.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 20/07/24.
//

import SwiftUI

struct AnimationStack: View {
    
    @State private var enabled = false
    
    var body: some View {
        Button("Tap me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .foregroundStyle(.white)
        .animation(nil, value: enabled)
        .clipShape(.rect(cornerRadius: enabled ? 60 : 0))
        .animation(.spring(duration: 1, bounce: 0.6), value: enabled)
        .navigationTitle("Multiple")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AnimationStack()
}
