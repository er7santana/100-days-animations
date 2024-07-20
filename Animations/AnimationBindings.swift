//
//  AnimationBindings.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 19/07/24.
//

import SwiftUI

struct AnimationBindings: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack {
            Stepper("Scale amount: \(animationAmount.formatted())", value: $animationAmount.animation(
                .easeOut(duration: 1)
                .repeatCount(3, autoreverses: true)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                animationAmount += 1
            }
            .padding(40)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
        }
        .navigationTitle("Bindings")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AnimationBindings()
}
