//
//  BottomBar.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 13/10/2024.
//

import SwiftUI

struct BottomBar: View {
    @Binding var selectedTab: Int

    var body: some View {
        HStack {
            BottomBarButton(selectedTab: $selectedTab, sybolName: "tree", text: "Mi Jardin", tabIndex: 0)
            BottomBarButton(selectedTab: $selectedTab, sybolName: "camera.viewfinder", text: "Escanear", tabIndex: 1)
            BottomBarButton(selectedTab: $selectedTab, sybolName: "book", text: "Enciclopedia", tabIndex: 2)
            BottomBarButton(selectedTab: $selectedTab, sybolName: "person", text: "Mi Perfil", tabIndex: 3)
        }
        .padding(-3)
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(Color("BottomBarGreen"))
                .frame(height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .path(in: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
                )
        )
        .background(Color("BottomBarGreen")) //cambiar al color que corresponda
    }
}

struct BottomBarButton: View {
    @Binding var selectedTab: Int
    var sybolName: String
    var text: String
    var tabIndex: Int

    var body: some View {
        Button(action: {
            selectedTab = tabIndex }) {
            VStack {
                Image(systemName: sybolName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                Text(text)
                    .font(.caption)
            }
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    BottomBar(selectedTab: .constant(1))
}
