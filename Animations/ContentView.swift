//
//  ContentView.swift
//  Animations
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 19/07/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Form {
            NavigationLink("Simple", destination: SimpleAnimation())
            NavigationLink("Implicity", destination: ImplicityAnimations())
            NavigationLink("Explicity", destination: ExplicityAnimations())
            NavigationLink("Bindings", destination: AnimationBindings())
            NavigationLink("Stack (Multiple animations)", destination: AnimationStack())
            NavigationLink("Gestures", destination: AnimationGestures())
            NavigationLink("Gestures 2", destination: AnimationGestures2())
            NavigationLink("Showing and Hiding Transitions", destination: ShowingHidingViews())
        }
        .navigationTitle("Animations")
    }
}

#Preview {
    NavigationStack {
        ContentView()
    }
}
