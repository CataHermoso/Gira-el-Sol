//
//  MiPerfil.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 27/01/2025.
//

import SwiftUI

struct MiPerfil: View {
    var body: some View {
        Image(systemName: "person.fill")
        Text("Nombre User")
        Text("mail")
        Button(action: {

        }, label: {
            HStack {
                Text("Editar")
                Image(systemName: "pencil")
            }
                .frame(width: 300, alignment: .trailing)
        })
    }
}

#Preview {
    MiPerfil()
}
