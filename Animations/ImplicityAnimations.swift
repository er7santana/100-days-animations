//
//  ImplicityAnimations.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 19/07/24.
//

import SwiftUI

struct ImplicityAnimations: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                    .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
        .navigationTitle("Implicity")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ImplicityAnimations()
}
