//
//  Menu.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct Menu: View {
    let menuItems = [
    MenuItem(text: "Shop", symbol: "bag", destinationView: "Shop"),
    MenuItem(text: "Enciclopedia", symbol: "text.book.closed", destinationView: "Enciclopedia"),
    MenuItem(text: "Comunidad", symbol: "person.2", destinationView: "Comunidad"),
    MenuItem(text: "Mi Cuenta", symbol: "person.crop.circle", destinationView: "Mi Cuenta"),
    MenuItem(text: "Mi Jardin", symbol: "tree", destinationView: "Mi Jardin")
    ]

    var body: some View {
        NavigationView {
            ZStack {
                Color.green.edgesIgnoringSafeArea(.all) //cambiar al color verdadero
                VStack {
                    Button(action: {}, label: {
                        Image(systemName: "xmark")
                            .frame(width: 300, alignment: .trailing)
                    })
                    Spacer()
                    ForEach(menuItems, id: \.text) { item in
                        MenuSectionsBindingView(text: item.text, symbol: item.symbol, destinationView: item.destinationView)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.5)
                    Spacer()
                    Text("Subscribite a nuestra Newsletter")
                    EmailSectionView()
                    Rectangle()
                        .fill(.clear)
                        .frame(height: 30)
                    Text("FAQ")
                    Text("SOBRE NOSOTROS")
                    Text("CONTACTANOS")
                }
                .foregroundStyle(Color.white)
            }
        }
    }
}

struct MenuSectionsBindingView: View {
    @State var text: String
    @State var symbol: String
    @State var destinationView: String
    
    var body: some View {
        MenuSections(text: $text, symbol: $symbol, destinationView: $destinationView)
    }
}

struct EmailSectionBindingView: View {
    @State var email: String
    
    var body: some View {
        EmailSection(email: $email)
    }
}

#Preview {
    Menu()
}
