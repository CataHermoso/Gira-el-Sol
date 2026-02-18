//
//  Menu.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct Menu: View {
    @Binding var showMenu: Bool

    var body: some View {
        NavigationView {
            ZStack {
                Color.green.edgesIgnoringSafeArea(.all) //cambiar al color verdadero
                VStack {
                    Button(action: {
                        withAnimation {
                            showMenu = false
                        }
                    }, label: {
                        Image(systemName: "xmark")
                            .frame(width: 300, alignment: .trailing)
                    })
                    Spacer()
                    Text("Subscribite a nuestra Newsletter")
                    EmailSectionView()
                    Rectangle()
                        .fill(.clear)
                        .frame(height: 30)
                    Text("FAQ")
                    Text("SOBRE NOSOTROS")
                    Text("CONTACTANOS")
                    Spacer()
                    Text("Night Mode") //hacer el toggle a night mode
                }
                .foregroundStyle(Color.white)
            }
        }
    }
}

struct EmailSectionBindingView: View {
    @State var email: String
    
    var body: some View {
        EmailSection(email: $email)
    }
}

struct MenuPreview: View {
    @State var showMenuPreview = true

    var body: some View {
        Menu(showMenu: $showMenuPreview)
    }
}

#Preview {
    MenuPreview()
}
