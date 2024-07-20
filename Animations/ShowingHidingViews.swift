//
//  ShowingHidingViews.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 20/07/24.
//

import SwiftUI

struct ShowingHidingViews: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(
                        insertion: .scale,
                        removal: .opacity)
                    )
                
            }
        }
        .navigationTitle("Showing and Hiding")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ShowingHidingViews()
}
