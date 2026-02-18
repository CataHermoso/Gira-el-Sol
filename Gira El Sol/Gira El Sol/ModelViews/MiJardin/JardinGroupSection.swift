    //
//  JardinGroupSection.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 11/10/2024.
//

import SwiftUI

struct JardinGroupSection: View {
    @Binding var nombre: String
    @Binding var notification: notificationType
    @Binding var favorita: favoritaType
    @Binding var emoji: String
    @Binding var fondoColor: fondosColorType
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 180)
            Image(fondoColor.rawValue)
            HStack (alignment: .top){
                VStack (alignment: .leading) {
                    Text(nombre)
                        .font(.title)
                        .lineLimit(2)
                        .fixedSize(horizontal: true, vertical: true)
                        .minimumScaleFactor(0.8)
                    Spacer()
                    HStack{
                        Image(systemName: favorita.rawValue)
                            .foregroundColor(.red)
                            .padding(.trailing)
                        Image(systemName: notification.rawValue)
                            .padding(.trailing)
                        }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer(minLength: 10)
                Text(emoji)
                    .font(.system(size: 60))
                    .frame(width: 70, alignment: .topTrailing)
            }
            .frame(width: 220, height: 1)
        }
    }
}

struct PlantaSectionStateView: View {
    @State private var nombre = "Balcon depto"
    @State private var notification: notificationType = .noNotification
    @State private var favorita: favoritaType = .fav
    @State private var emoji = "🌻"
    @State private var fondoColor: fondosColorType = .verdeAgua

    var body: some View {
        VStack {
            JardinGroupSection(nombre: $nombre, notification: $notification, favorita: $favorita, emoji: $emoji, fondoColor: $fondoColor)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PlantaSectionStateView()
}
