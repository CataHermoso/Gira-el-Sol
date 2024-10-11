//
//  EmailSection.swift
//  Gira El Sol
//
//  Created by Catalina Hermoso on 10/10/2024.
//

import SwiftUI

struct EmailSection: View {
    @Binding var email: String
    
    var body: some View {
        HStack {
            Image(systemName: "envelope")
                .frame(width: 30, alignment: .center)
                .foregroundColor(.white)
            ZStack(alignment: .center) {
                // Custom placeholder text
                if email.isEmpty {
                    Text("Ingresa tu email aca :)")
                        .foregroundColor(.white)
                        .padding(.horizontal, 5)
                }
                // Actual TextField
                TextField("", text: $email)

            }
            .background(Color.green)
        }
        .frame(width: UIScreen.main.bounds.width * 0.6)
        .padding(15)
        .overlay(
        RoundedRectangle(cornerRadius: 17)
            .stroke(Color.white, lineWidth: 1))
    }
}

struct EmailSectionView: View {
    @State private var menuEmail = ""
    
    var body: some View {
        EmailSection(email: $menuEmail)
            .padding()
    }
}

#Preview {
    EmailSectionView()
}
