//
//  ContentView.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 07/10/2024.
//

import SwiftUI

struct Inicio: View {
    
    var body: some View {
        VStack {
            //if (notification equals true) {
                 //TopBarBindingView(symbol: "bell.badge")
            //} else {
            topBarBindingView(symbol: "bell")
            //}
            SearchBarView()
            Spacer()
            BottomBar()
        }
    }
}

struct topBarBindingView: View {
    @State var symbol: String
    
    var body: some View {
        TopBar(symbol: $symbol)
    }
}

#Preview {
    Inicio()
}
 
