//
//  JardinGroupItem.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 11/10/2024.
//

import Foundation

enum fondosColorType: String {
    case verdeLima = "Fondo Verde Lima"
    case verdeAgua = "Fondo Verde Agua"
    case amarilloArena = "Fondo Amarillo Arena"
    case amarilloCamel = "Fondo Amarillo Camel"
    case verdeManzana = "Fondo Verde Manzana"
    }
enum notificationType: String {
    case noNotification = "bell"
    case yesNotification = "bell.badge.fill"
    /*case basicaGota = "drop"
    case mediaGota = "drop.halffull"
    case rellenaGota = "drop.fill"
   */}
enum favoritaType: String {
    case noFav = "heart"
    case fav = "heart.fill"
}

class JardinGroupItem: Identifiable {
    let id = UUID()
    let nombre: String
    let notification: notificationType
    let favorita: favoritaType
    let emoji: String
    let fondoColor: fondosColorType
    
    
    init(nombre: String, notification: notificationType, favorita: favoritaType, emoji: String, fondoColor: fondosColorType)
    {
        self.nombre = nombre
        self.notification = notification
        self.favorita = favorita
        self.emoji = emoji
        self.fondoColor = fondoColor
    }
}
