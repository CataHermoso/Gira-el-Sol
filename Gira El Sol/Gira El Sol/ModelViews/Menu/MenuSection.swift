//
//  MenuSections.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct MenuSection: View {
    var text: String
    var symbol: String
    var destinationView: AnyView
    
    var body: some View {
        NavigationLink(destination: destinationView) {
            HStack {
                Image(systemName: symbol)
                    .frame(width: 30, alignment: .trailing)
                Rectangle()
                    .fill(.clear)
                    .frame(width: 10, height: 5)
                Text(text)
            }
            .foregroundColor(Color.white)
            .padding(15)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct MenuSectionStateView: View {
    @State private var menuText = "Shop"
    @State private var menuSymbol = "bag"
    @State private var menuDestinationView = AnyView(MisJardines())

    var body: some View {
        VStack {
            MenuSection(text: menuText, symbol: menuSymbol, destinationView: menuDestinationView)
            Spacer()
        }
        .padding()
        .background(.green)
    }
}

#Preview {
    MenuSectionStateView()
}
