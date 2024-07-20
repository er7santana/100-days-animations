//
//  SimpleAnimation.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 20/07/24.
//

import SwiftUI

struct SimpleAnimation: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        ZStack {
            Button("Tap me") {
                animationAmount += 1
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.red)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(
                .easeInOut(duration: 1)
                .repeatForever(autoreverses: true),
//                .repeatCount(3, autoreverses: true),
                value: animationAmount
            )
            
            Text(animationAmount.formatted())
                .font(.largeTitle)
                .bold()
                .animation(.linear, value: animationAmount)
        }
        .navigationTitle("Simple")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SimpleAnimation()
}
