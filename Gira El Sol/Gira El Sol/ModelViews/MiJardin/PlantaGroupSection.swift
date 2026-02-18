//
//  PlantaGroupSection.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 17/02/2026.
//

import SwiftUI

struct PlantaGroupSection: View {
    @Binding var nombre: String
    @Binding var riego: riegoType
    @Binding var favorita: favoritaTypePlant
    @Binding var image: String
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray.opacity(0.2))
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white))
            
            HStack (spacing: 12){
                
                Image(systemName: favorita.rawValue)
                    .foregroundColor(.red)
                Text(nombre)
                    .font(.title3)
                    .lineLimit(2)
                    .minimumScaleFactor(0.8)
                    .layoutPriority(1)
                Spacer()
                Image(systemName: riego.rawValue) //en rojo si es gota vacia, amarillo si esta media y azul si esta llena
                    .foregroundColor(.blue)
                Image(image) //reemplazar con la img que saca el user cuando escanea
                    .resizable()
                    .scaledToFill()
                    .frame(width: 75, height: 75)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.bottomBarGreen, lineWidth: 4)
                    )
            }
            .padding()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 97)
        .padding(.horizontal)
        /*.navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .navigationBar)*/
    }
}

struct PlantaGroupSectionView: View {
    @State private var nombre = "Alocasia"
    @State private var riego: riegoType = .mediaGota
    @State private var favorita: favoritaTypePlant = .fav
    @State private var imageName = "Alocasia Pic"
    
    var body: some View {
        VStack {
            PlantaGroupSection(nombre: $nombre, riego: $riego, favorita: $favorita, image: $imageName)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    PlantaGroupSectionView()
}
