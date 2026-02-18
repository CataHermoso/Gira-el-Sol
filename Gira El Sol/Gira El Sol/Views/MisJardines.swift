//
//  MisJardines.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 11/10/2024.
//

import SwiftUI

struct MisJardines: View {
    @State private var showMenu = false
    
    let jardines = [
        JardinGroupItem(nombre: "Casa Mama", notification: .noNotification , favorita: .fav, emoji: "🌻", fondoColor: .verdeAgua),
        JardinGroupItem(nombre: "Plantas calle", notification: .yesNotification, favorita: .noFav, emoji: "🌳", fondoColor: .verdeLima),
        JardinGroupItem(nombre: "Balcon Depto", notification: .yesNotification, favorita: .fav, emoji: "🌹", fondoColor: .amarilloCamel)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack {
                        ForEach(jardines) { jardin in
                            NavigationLink(destination: MisPlantas()) { //cambiar a clase que contenga la lista de plantas de cada jardin
                                JardinItemBindingView(
                                    nombre: jardin.nombre,
                                    notification: jardin.notification,
                                    favorita: jardin.favorita,
                                    emoji: jardin.emoji,
                                    fondoColor: jardin.fondoColor)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.vertical, -10)
                        }
                    }
                }
                if showMenu {
                    Menu(showMenu: $showMenu)
                        .transition(.move(edge: .trailing))
                        .animation(.easeInOut, value: showMenu)
                        .zIndex(1)
                }
            }
        }
    }
}

struct JardinItemBindingView: View {
    @State var nombre = "Balcon depto"
    @State var notification: notificationType = .yesNotification
    @State var favorita:favoritaType = .fav
    @State var emoji = "🌻"
    @State var fondoColor: fondosColorType = .verdeLima

    var body: some View {
        VStack {
            JardinGroupSection(nombre: $nombre, notification: $notification, favorita: $favorita, emoji: $emoji, fondoColor: $fondoColor)
            Spacer()
        }
        .padding()
    }
}
	
#Preview {
    MisJardines()
}
