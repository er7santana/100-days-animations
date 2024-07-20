//
//  ExplicityAnimations.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 19/07/24.
//

import SwiftUI

struct ExplicityAnimations: View {
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Button("Vermelho") {
                    
                }
                .padding(50)
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(.circle)
                Button("Azul") {
                    
                }
                .padding(50)
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(.circle)
            }
            .rotation3DEffect(
                .degrees(animationAmount),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
            
            Button(action: {
                withAnimation(.spring(duration: 1, bounce: 0.5)) {
                    animationAmount += (180.0 * Double(Int.random(in: 3...6)))
                }
            }, label: {
                Text("Flip the coin")
                    .padding()
                    .background(.red)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 6))
            })
        }
        .navigationTitle("Explicity")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ExplicityAnimations()
}
