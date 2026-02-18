//
//  MisPlantas.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 17/02/2026.
//

import SwiftUI

struct MisPlantas: View {
    @State private var showMenu = false

    let plantas = [
        PlantaGroupItem(nombre: "Alocasia", riego: .basicaGota, favorita: .noFav, image: "Alocasia Pic"),
        PlantaGroupItem(nombre: "Hoja de Sangre", riego: .rellenaGota, favorita: .fav, image: "Hoja de Sangre Pic"),
        PlantaGroupItem(nombre: "Girasol", riego: .mediaGota, favorita: .fav, image: "Girasol Pic")
    ]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(plantas) { planta in
                    PlantaBindingView(
                        nombre: planta.nombre,
                        riego: planta.riego,
                        favorita: planta.favorita,
                        imageName: planta.image)
                    .padding(.vertical, 3)}
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

struct PlantaBindingView: View {
    @State var nombre = "Alocasia"
    @State var riego: riegoType = .basicaGota
    @State var favorita: favoritaTypePlant = .fav
    @State var imageName = "Alocasia Pic"
    
    var body: some View {
        VStack {
            PlantaGroupSection(nombre: $nombre, riego: $riego, favorita: $favorita, image: $imageName)
        }
    }
}

#Preview {
    MisPlantas()
}
