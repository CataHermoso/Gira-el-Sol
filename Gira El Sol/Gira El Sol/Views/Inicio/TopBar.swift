//
//  TopBar.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct TopBar: View {
    @Binding var symbol: String
    
    var body: some View {
        HStack {
            Image(systemName: "leaf.fill")
                .foregroundStyle(Color(.green))
                .padding()
            Text("GIRA EL SOL")
                .font(.headline)
            Spacer()
            Image(systemName: symbol) //change it to bell.badge when a notification comes through
            Image(systemName: "line.3.horizontal")
                .padding()
        }
    }
}

struct TopBarBindingView: View {
    @State private var topBarSymbol = "bell"
    
    var body: some View {
        TopBar(symbol: $topBarSymbol)
    }
}

#Preview {
    TopBarBindingView()
}
