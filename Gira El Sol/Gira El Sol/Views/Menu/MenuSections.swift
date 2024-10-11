//
//  MenuSections.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct MenuSections: View {
    @Binding var text: String
    @Binding var symbol: String
    @Binding var destinationView: String
    
    var body: some View {
        NavigationLink(destination: Text(destinationView)) {
            HStack {
                Image(systemName: symbol)
                    .frame(width: 30, alignment: .trailing)
                Rectangle()
                    .frame(width: 10, height: 5)
                    .foregroundStyle(.clear)
                Text(text)
            }
            .foregroundColor(Color.white)
            .padding(15)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.green) //should not have background color, or it has to be the same as the menu's background
        }
    }
}

struct MenuSectionStateView: View {
    @State private var menuText = "Shop"
    @State private var menuSymbol = "bag"
    @State private var menuDestinationView = "Shop"

    var body: some View {
        VStack {
            MenuSections(text: $menuText, symbol: $menuSymbol, destinationView: $menuDestinationView)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MenuSectionStateView()
}
