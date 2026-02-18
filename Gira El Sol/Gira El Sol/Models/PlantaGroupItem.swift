//
//  PlantaGroupItem.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 17/02/2026.
//

import Foundation
import SwiftUI

enum riegoType: String {
    case basicaGota = "drop"
    case mediaGota = "drop.halffull"
    case rellenaGota = "drop.fill"
   }
enum favoritaTypePlant: String {
    case noFav = "heart"
    case fav = "heart.fill"
}

class PlantaGroupItem: Identifiable {
    let id = UUID()
    let nombre: String
    let riego: riegoType
    let favorita: favoritaTypePlant
    let image: String
    
    
    init(nombre: String, riego: riegoType, favorita: favoritaTypePlant, image: String)
    {
        self.nombre = nombre
        self.riego = riego
        self.favorita = favorita
        self.image = image
    }
}
