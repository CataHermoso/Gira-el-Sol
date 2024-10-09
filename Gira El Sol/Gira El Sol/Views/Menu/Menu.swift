//
//  Menu.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct Menu: View {
    let menuItems = [
    MenuItem(text: "Shop", symbol: "bag"),
    MenuItem(text: "Enciclopedia", symbol: "text.book.closed"),
    MenuItem(text: "Comunidad", symbol: "person.2"),
    MenuItem(text: "Mi Cuenta", symbol: "person.crop.circle"),
    MenuItem(text: "Mi Jardin", symbol: "camera.macro")
    ]
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all) //cambiar al color verdadero
                VStack {
                    Image(systemName: "xmark") //make it a button to exit the menu
                        .frame(width: 300, alignment: .trailing)
                    Spacer()
                    ForEach(menuItems, id: \.text) { item in
                        MenuSectionsBindingView(text: item.text, symbol: item.symbol)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.5)
                    Spacer()
                    Text("Subscribite a nuestra Newsletter")
                    Text("Escribi tu email aca!") //hacerlo para que ingresen el mail
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

struct MenuSectionsBindingView: View {
    @State var text: String
    @State var symbol: String
    
    var body: some View {
        MenuSections(text: $text, symbol: $symbol)
    }
}

#Preview {
    Menu()
}
