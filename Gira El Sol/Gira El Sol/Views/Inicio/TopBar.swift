//
//  TopBar.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack {
            Image(systemName: "leaf.fill")
                .foregroundStyle(Color(.green))
            Text("GIRA EL SOL")
            Image(systemName: "bell") //change it to bell.badge when a notification comes through
            //menu symbol
        }
    }
}

#Preview {
    TopBar()
}
