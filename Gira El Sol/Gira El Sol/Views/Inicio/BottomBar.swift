//
//  InicioContent.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 09/10/2024.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {

            HStack {
                Image(systemName: "house")
                    .padding(.leading, 35)
                Spacer()
                ZStack {
                    Image(systemName: "barcode.viewfinder")
                    Rectangle()
                        .frame(width: 9, height: 7)
                        .foregroundColor(Color.white)
                    Image(systemName: "camera.macro")
                        .resizable()
                        .frame(width: 9, height: 9)
                }
                Spacer()
                Image(systemName: "tree")
                    .padding(.trailing, 35)
            
        }
        .background(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous)
                .path(in: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
                )
        )
        .frame(height: 13)
    }
}

#Preview {
    BottomBar()
}
