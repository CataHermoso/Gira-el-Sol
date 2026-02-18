//
//  TopBar.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct TopBar: View {
    @Binding var showMenu: Bool
    @Binding var symbol: String
    
    var body: some View {
        HStack {
            Image(systemName: "leaf.fill")
                .foregroundStyle(Color(.green))
                .padding()
            Text("GIRA EL SOL")
                .font(.headline)
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: symbol)
            })
            .foregroundColor(.black)
            Button(action: {
                withAnimation {
                    showMenu.toggle()
                }
            }, label: {
                Image(systemName: "line.3.horizontal")
            })
            .foregroundColor(.black)
            .padding()
        }
    }
}

struct TopBarStateView: View {
    @State private var menuShow = false
    @State private var topBarSymbol = "bell"
    
    var body: some View {
        TopBar(showMenu: $menuShow, symbol: $topBarSymbol)
    }
}

#Preview {
    TopBarStateView()
}
