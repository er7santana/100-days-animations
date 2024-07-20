//
//  AnimationGestures2.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 20/07/24.
//

import SwiftUI

struct AnimationGestures2: View {
    
    let letters = Array("Cacto Velas")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<letters.count, id: \.self) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .green : .yellow)
                    .offset(dragAmount)
                    .animation(.linear.delay(Double(num) / 20),
                               value: dragAmount)
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
        .navigationTitle("Gestures 2")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AnimationGestures2()
}
