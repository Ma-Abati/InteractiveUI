//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maia Fattori Abati on 09/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            
            TextField("type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 4)
            
            Button("Summit name") {
               textTitle = "Welcome \(name) !"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
