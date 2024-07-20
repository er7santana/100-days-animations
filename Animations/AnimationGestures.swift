//
//  AnimationGestures.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 20/07/24.
//

import SwiftUI

struct AnimationGestures: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.green, .green.opacity(0.4)],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .frame(width: 300, height: 200)
        .clipShape(.rect(cornerRadius: 10))
        .offset(dragAmount)
        // Option 1 - Implicity animation
//        .animation(.bouncy, value: dragAmount)
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
            // Option 1 - Implicity animation
//                .onEnded { _ in dragAmount = .zero }
                // Option 2 - Explicity Animation
                .onEnded { _ in
                    withAnimation(.bouncy) {
                        dragAmount = .zero
                    }
                }
        )
        .navigationTitle("Gestures")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AnimationGestures()
}
